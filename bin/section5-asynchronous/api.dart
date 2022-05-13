import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  var data = await fetchData();
  for (var i in data) {
    print(i['userId']);
    print(i['id']);
    print(i['title']);
  }
}

Future<dynamic> fetchData() async {
  final url = 'https://jsonplaceholder.typicode.com/albums';
  http.Response res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    return json.decode(res.body);
  } else {
    throw Exception();
  }
}
