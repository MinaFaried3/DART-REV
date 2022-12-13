class Reading {
  double value;
  Reading({required double value}) : this.value = value;

  Reading.zero() : value = -999;
  factory Reading.fromServer(Map<String, Object> server) {
    final type = server['type'];
    final reading = server['reading'] as double;
    switch (type) {
      case 'temp':
        final city = server['city'];
        if (city is String) {
          return Temperature(city: city, reading: reading);
        } else {
          return Temperature.zero();
        }

      case 'pressure':
        final object = server['object'];
        if (object is String) {
          return Pressure(objectTested: object, reading: reading);
        } else {
          return Pressure.zero();
        }
      default:
        return Reading.zero();
    }
  }
  @override
  String toString() {
    return '$value';
  }
}

class Temperature extends Reading {
  String city;
  Temperature({required String city, required double reading})
      : this.city = city,
        super(value: reading);
  Temperature.zero()
      : city = '',
        super(value: -999);

  @override
  String toString() {
    return 'Temperature reading:\nReading: ${super.toString()}\nCity: $city \n';
  }
}

class Pressure extends Reading {
  String objectTested;
  Pressure({required String objectTested, required double reading})
      : this.objectTested = objectTested,
        super(value: reading);
  Pressure.zero()
      : objectTested = '',
        super(value: -999);
  @override
  String toString() {
    return 'Pressure reading:\nReading: ${super.toString()}\nObject Tested: $objectTested \n';
  }
}

void main() {
  var fromServer = [
    {
      'type': 'temp',
      'reading': 20.2,
      'city': 'Johannesburg',
    },
    {
      'type': 'pressure',
      'reading': 100.0,
      'object': 'Gass cilinder',
    },
    {
      'type': 'temp',
      'reading': 35.2,
      'city': 'New York',
    },
    {
      'type': 'pressure',
      'reading': 300.5,
      'object': 'Tyre',
    }
  ];

//  -------------------------------------
  var readings = <Reading>[];
  for (var item in fromServer) {
    readings.add(Reading.fromServer(item));
  }

  for (var item in readings) {
    print(item);
  }
}
