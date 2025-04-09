import 'dart:mirrors';

void main(List<String> args) {
  final person = Person(
    name: 'John',
    age: 30,
  );
  print(person);
  final house = House(
    address: '123 Main St',
    rooms: 6,
  );
  print(house);
}

// 1 - create key
extension AsKey on VariableMirror {
  String get asKey {
    final String fieldName = MirrorSystem.getName(simpleName);
    final String fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

// 2 - prepare mixin
mixin HasDescription {
  @override
  String toString() {
    final InstanceMirror reflection = reflect(this);
    final String thisType = MirrorSystem.getName(reflection.type.simpleName);

    final Iterable<VariableMirror> variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final String properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection.getField(field.simpleName).reflectee,
    }.toString();

    return '$thisType = $properties';
  }
}

// 3 - classes
class Person with HasDescription {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;

  const House({
    required this.address,
    required this.rooms,
  });
}
