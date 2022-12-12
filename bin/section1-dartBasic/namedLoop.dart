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
}
