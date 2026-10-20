class User {
  final int id;

  User(this.id);

  @override
  bool operator ==(Object other) =>
      other is User && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
//---------------------------------
final cache = <User, String>{};

//after process finish it will be stacked at gc
void process() {
  final user = User(10);
  cache[user] = 'Temporary metadata';
}

final cache2 = Expando<String>();
//If no other strong references exist, the User becomes eligible for garbage collection.
void process2() {
  final user = User(10);
  cache2[user] = 'Temporary metadata';
}

//--------------------------------
void main() {
  final user1 = User(10);
  final user2 = User(10);

  final map = <User, String>{};
  final expando = Expando<String>();

  map[user1] = 'Admin';
  expando[user1] = 'Admin';

  print(map[user2]);     // Admin
  print(expando[user2]); // null
}