main() {
  final str = Stream.periodic(Duration(milliseconds: 600), (a) => a);
  // var sub1 = str.listen((_) => _,
  //     onError: (err) {
  //       print(err.toString());
  //     },
  //     onDone: () => print('done'),
  //     cancelOnError: true);
  // //_____________________________________________
  // sub1.onData((data) {
  //   data == 15 ? sub1.cancel() : print(data);
  // });
//  ___________________________________
  final str2 = str.where((event) => event % 2 == 0);
  var sub2 = str2.listen(
    (event) => print(event),
  );
  final str3 = Stream.periodic(Duration(milliseconds: 400), (a) => a * 2);
  var sub3 = str3.listen((event) => print('$event from str3'),
      onError: (err) {
        print(err.toString());
      },
      onDone: () => print('done'),
      cancelOnError: true);
  //_____________________________________________
  sub2.onData((data) {
    data == 15 ? sub2.cancel() : print(data);
  });
}
