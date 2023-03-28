import 'dart:convert';

import 'package:http/http.dart';

void main(List<String> arguments) async {
  Map<String, dynamic> productsMap = await getProducts();
  List products = productsMap['products'];

  print(productsMap['total']);
  for (var pro in products) {
    print(pro['title']);
    print(pro['price']);
    print('===============');
  }
}

Future<Map<String, dynamic>> getProducts() async {
  const String url = 'https://dummyjson.com/products';

  final Response result = await get(Uri.parse(url));
  return json.decode(result.body);
}
