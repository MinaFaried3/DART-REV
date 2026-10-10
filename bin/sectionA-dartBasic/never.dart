
void fail(String message) {
  throw StateError(message);
}

void execute(String? username) {
  if (username == null) {
    fail('Username is required');
  }

  // username may still be nullable here.
  // The type system cannot infer from the
  // return type void that fail() always throws.
  print(username!.length); // Safe
}

Never fail1([String? message]) {
  throw StateError(message?? '');
}

void execute1(String? username) {
  if (username == null) {
    fail1('Username is required');
  }

  // Dart knows the null branch cannot continue.
  print(username.length); // Safe
}
//====================================================
//never is type of all types
String getName(bool valid) {
  return valid ? 'Mina' : fail1();
}

int getAge(bool valid) {
  return valid ? 25 : fail1();
}

bool isAuthorized(bool valid) {
  return valid ? true : fail1();
}
//==================================================

Never runForever() {
  while (true) {
    // Continues indefinitely.
  }
}
void runForever1() {
  while (true) {
    // Continues indefinitely.
  }
}
///Null is a real type with one possible value. Never has no values at all.
void main(){
  // any code after it recgonize as dead code
runForever();
runForever1();
}