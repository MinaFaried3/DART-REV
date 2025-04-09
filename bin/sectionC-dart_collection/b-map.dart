import 'dart:collection';

void main(List<String> args) {
  final info = {
    'name': 'Foo',
    'age': 10,
  };
  print(info);
  print(info['name']);
  print(info['age']);
  print('---------------------');

  print(info.keys);
  print(info.values);
  print('putIfAbsent---------------------');

  info.putIfAbsent(
    'height',
    () => 180,
  );
  print(info);
  print('------------------');

  info['height'] = 190;
  print(info);
  print('------------------');

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('------------------');

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }

  print('--------------------');

  print(info['weight']);
  print('--------------------');

  final mapWithIntKeys = {
    10: 20,
    30: 40,
  };
  print(mapWithIntKeys);
  print(mapWithIntKeys[10]);
  print('------------------');
  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {
      'phone': '123-456-7890',
    },
  );

  try {
    info2.addAll(
      {
        'phone': '123-456-7890',
      },
    );
  } catch (e) {
    print(e);
  }
}