abstract class AbstractAnimal {}

class AbstractHuman extends AbstractAnimal {}

class AbstractDog extends AbstractAnimal {}

class AbstractCat extends AbstractAnimal {}

//--------------------------------------------------------------------------
//sealed is like abstract we can't take an object from it
sealed class SealedAnimal {}

//must extended in same library
class SealedHuman extends SealedAnimal {}

class SealedDog extends SealedAnimal {}

class SealedCat extends SealedAnimal {}

//--------------------------------------------------------------------------
//final is class we cant take object from it
final class FinalAnimal {}

//must extended in same library like sealed
//all extend must be 'base', 'final' or 'sealed' because the supertype 'FinalAnimal' is 'final'.
base class FinalHuman implements FinalAnimal {}

base class FinalDog extends FinalAnimal {}

base class FinalCat extends FinalAnimal {}

//
// abstract interface  class ani{
//   void po(){
//
//   }
// }
void main() {
  print('==abstract class in switch==');

  AbstractAnimal animal1 = AbstractDog();

  //not force us to implement all cases
  switch (animal1) {
    case AbstractCat():
      print("is a cat");
  }

  print("\n ======================================= \n");
  print('==sealed class in switch==');
  SealedAnimal animal2 = SealedDog();
  //force us to implement all cases
  switch (animal2) {
    case SealedDog():
      print('is a dog');
    case SealedCat():
      print('is a cat');
    case SealedHuman():
      print('is a human');
  }

  print("\n ======================================= \n");
  print('==final class can take object from it==');
  FinalAnimal animal3 = FinalAnimal(); //can take object from it
}
