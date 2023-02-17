void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

/// must add [HasSpeed] and must be first
/// 'CanJump' can't be mixed onto 'Object' because 'Object' doesn't implement 'HasSpeed'
// class Person with CanJump, CanWalk
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;
  Person() : speed = 0.0;
}
