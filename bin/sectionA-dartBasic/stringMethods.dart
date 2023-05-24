main() {
  String name = 'mina faried';
  print('contains method => ${name.contains('ina ')}');
  print(
      'replaceRange(start, end, replacement) method => ${name.replaceRange(0, 4, 'marko')}');
  print('replaceFirst(from, to) method => ${name.replaceFirst('a', 'mino')}');
  print('replaceFirst(from, to) method => ${name.replaceAll('a', ' mino ')}');

  // ---------------------------
  print('''
  
                  ---------------------------
  
  ''');

  String text = '       m#i#n#a#f#a#r#i#e#d';
  print('split method => ${text.split('#')}');

  List text2 = text.split('#');
  print('join(#) method => ${text2.join('#')}');
  print('join() method => ${text2.join()}');

  String text3 = text2.join('#');
  print('replaceAll(from, replace) method => ${text3.replaceAll('#', '**')}');
  print('trim method => ${text.trim()}');
}
