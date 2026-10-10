
class Repository {
  void save() => print('Saved');

}

mixin Logger {
  void log() => print('Logged');
}

mixin Cache {
  void cache() => print('Cached');


}

// Named mixin application
class UserRepository = Repository with Logger, Cache;

void main() {
  final repository = UserRepository();

  repository.save();
  repository.log();
  repository.cache();
}
