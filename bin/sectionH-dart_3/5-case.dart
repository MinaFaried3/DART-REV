/*
* if (expression case pattern) {
  // Executes if the pattern matches.
}

if (expression case pattern when condition) {
  // Pattern matches AND condition is true.
}
*
* pattern can be type or value
* like case 200
*      case int value
* */


class User {
  final int id;
  final String name;
  final bool active;

  const User(this.id, this.name, this.active);
}
void main(){
  int status = 200;
  // The difference is:
  // - status == 200 is an ordinary Boolean expression using operator ==.
  // - status case 200 is pattern matching using a constant pattern, which also relies on equality.
  if (status case 200) {
    print('Success');
  }  if (status == 200) {
    print('Success');
  }
  print ("==========================================");
  //statu instead of duplication the variable name
  if (status case >= 200 && < 300) {
    print('HTTP success');
  }
  if (status case 200 || 201 || 204) {
    print('Successful response');
  }
  print ("==========================================");
  Object resp = 'resp';
  if (resp case var value) {
    value = 'response';
    print(value);
  }

  if (resp case final result) {
    // result = 'response'; //!!error
    print(result);
  }

  if (resp case String message) {
    print(message.toUpperCase());
  }
  print ("==========================================");
  final (int,dynamic) response = ( 200, 'Success');
  if (response.$1 == 200 && response.$2 is String) {
    final message = response.$2 as String;
    print(message);
  }
  //better way
  if(response case (200,String message)){
    print(message);
  }
  print ("==========================================List pattern");
  Object data = [10, 'Mina', true];

  if (data case [int id, String name, bool active]) {
    print('$id $name $active');
  }
  print ("==========================================");
  final numbers = [1, 2, 3, 4, 5];

  if (numbers case [1, 2, ...]) {
    print('Starts with 1 and 2');
  }

  if (numbers case [int first, ...final rest]) {
    print(first); // 1
    print(rest);  // [2, 3, 4, 5]
  }

  if (numbers case [1, ...final middle, 5]) {
    print(middle); // [2, 3, 4]
  }
  print ("==========================================");
  Object value = const User(10, 'Mina', true);

  if (value case User(
  id: > 0,
  name: String name,
  active: true,
  )) {
    print('Active user: $name');
  }
  print ("========================================== guard when");
  final responseWhen = (
  status: 200,
  data: <int>[10, 20, 30],
  );

  if (responseWhen case (
  status: 200,
  data: List<int> items,
  ) when items.isNotEmpty) {
    print('First item: ${items.first}');
  }
  //short cut instead of data : final value
  if (responseWhen case (status: 200, :final data)) {
    print(data);
  }
  print ("========================================== null pattern");
  String? name ;

  if (name case final value?) {
    print(value.length);//not printed
  }
  if (name case String value?) {
    print(value.length);//not printed
  }
  if (name case String? value) {
    print(value?.length); //printed
  }
  if (name case String? value?) {
    print(value.length); //not printed
  }
  //value? — if null, pattern fails.
  // value! — if null, throws an exception.
  try {
    if (name case final value!) {
      print(value.length);
    }
  } catch (e) {
    print('Null assertion failed');
  }
  print ("========================================== dd");
  Object dd = [10, 'Mina', true];

  if (dd case [int _, String name, bool _]) {
    print(name);
  }
  print ("========================================== dd");
  (int?, int?) position = (10, 20);

  var (x!, y!) = position;

  print(x + y);
  print ("========================================== for");
  final orders = [
    (id: 1, totals: [100.0, 200.0]),
    (id: 2, totals: [50.0, 75.0]),
  ];

  for (final (id: orderId, totals: [first, second]) in orders) {
    print('Order $orderId: ${first + second}');
  }

}