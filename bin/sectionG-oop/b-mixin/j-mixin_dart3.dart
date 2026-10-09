/*
*     Capability	                  mixin	  mixin class
      Instantiate directly	        No	    Yes, if concrete
      Use with with	                Yes	   	Yes
      Use with extends	            No	   	Yes
      Use with implements	          Yes	   	Yes
      Declare on constraint	        Yes	   	No
      Generative constructor	      No	   	No
      Factory constructor	          Yes	   	Yes
* */


mixin class Logger {

  void log(String message) {
    print(message);
  }
  Logger();
  Logger.named();

// ❌ Invalid: Has a parameter
// Logger.withName(String name);

// ❌ Invalid: Has a body
// Logger.custom() {
//   print('Created');
// }

// ❌ Invalid: Has an initializer
// Logger.checked() : assert(true);

// ❌ Invalid: Redirecting generative constructor
// Logger.redirect() : this();
}

// Used as a mixin
class UserService with Logger {}

// Used as a superclass
class ProductService extends Logger {}

void main() {
  final logger = Logger(); // Valid

  UserService().log('User');
  ProductService().log('Product');
  logger.log('Direct');
}
