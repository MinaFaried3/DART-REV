class MyState {
  MyState._();

  factory MyState.success(String foo) = MySuccessState;
  factory MyState.error(String foo) = MyErrorState;
}

class MyErrorState extends MyState {
  MyErrorState(this.msg) : super._();

  final String msg;
}

class MySuccessState extends MyState {
  MySuccessState(this.value) : super._();

  final String value;
}

void main(List<String> args) {
  MyState myState = MyState._();
  print(myState);

  // Foo foo = Foo._(); //error because different file
}
