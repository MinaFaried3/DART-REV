class User {
  int id;
  String name;
  String position;

  User({required this.id, required this.name, required this.position});

  @override
  String toString() {
    return 'User{id: $id, name: $name, position: $position}';
  }
}

class Animal {
  String kind;
  int numberOfLegs;

  Animal({required this.kind, required this.numberOfLegs});

  @override
  String toString() {
    return 'Animal{kind: $kind, numberOfLegs: $numberOfLegs}';
  }
}

List<T> search<T>(List<T> items, bool Function(T) compare) {
  return items.where(compare).toList();
}

void main() {
  List<User> users = [
    User(id: 1, name: 'mina', position: 'ceo'),
    User(id: 2, name: 'merna', position: 'artist'),
    User(id: 3, name: 'gerges', position: 'cto'),
  ];

  List<Animal> animals = [
    Animal(kind: 'cat', numberOfLegs: 4),
    Animal(kind: 'lion', numberOfLegs: 4),
    Animal(kind: 'horse', numberOfLegs: 4),
  ];

  print(search(users, (p0) => p0.name == 'mina'));
  print(search<Animal>(animals, (p0) => p0.kind == 'horse'));
}
