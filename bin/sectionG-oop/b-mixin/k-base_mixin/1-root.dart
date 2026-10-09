
base mixin Logger {
  void log(String message) {
    print(message);
  }
}

base class UserService with Logger {}
 // error should be base
 // class AdminService with Logger {}
