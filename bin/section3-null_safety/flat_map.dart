void main(List<String> args) {
  String? firstName = 'John';
  String? middleName = 'min';
  String? lastName = 'Doe';

  // final fullName = firstName.flatMap(
  //       (f) => lastName.flatMap(
  //         (l) => '$f $l',
  //       ),
  //     ) ??
  //     'Either first or last name or both are null';

  final String fullName1 = firstName.flatMap((f) =>
          middleName.flatMap((m) => lastName.flatMap((l) => "$f $m $l"))) ??
      "";
  print(fullName1);
  print("//----------------------");
  print(fullName(null, null));
  print(fullName('John', null));
  print(fullName(null, 'Doe'));
  print(fullName('John', 'Doe'));
}

//-----------------------------------------------------------
extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

//---------------------------------------------------
String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension Defaultvalues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
