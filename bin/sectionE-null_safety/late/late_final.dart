void main(List<String> args) {
  late final bool isTeenager; //late the initializer of final
  const age = 12;
  const age1 = 12;
  print(age.hashCode == age1.hashCode);
  //notice that initialize
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }

  print('isTeenager = $isTeenager');
}
