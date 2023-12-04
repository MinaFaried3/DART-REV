import '4-class_modifiers_part1.dart';

// can't extended outside library
// class SealedHuman extends SealedAnimal {}
//
// class SealedDog extends SealedAnimal {}
//
// class SealedCat extends SealedAnimal {}

//--------------------------------------------------------------------------
// can't extended outside library
// base class FinalHuman implements FinalAnimal {}

void main() {
  // can import out side file
  AbstractAnimal animal1 = AbstractCat();

  //  // can import out side file
  SealedAnimal animal2 = SealedDog();
}
