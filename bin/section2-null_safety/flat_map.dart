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

  final String fullName = firstName.flatMap((f) =>
          middleName.flatMap((m) => lastName.flatMap((l) => "$f $m $l"))) ??
      "";
  print(fullName);
}

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
