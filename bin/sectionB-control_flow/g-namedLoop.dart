void main() {
  print(" named loop");
  int x = 1;
  // this trick give an name to loops to more control

  mina:
  while (x <= 10) {
    print("named mina loop $x");
    x--;
    if (x == -10) {
      break mina;
    }
  }

  foo:
  for (var i = 0; i < 20; i++) {
    for (var x = 0; x < 10; x++) {
      print("$i $x");
      if(i == 5){
        break foo;
      }
    }
  }
}
