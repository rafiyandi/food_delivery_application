import 'dart:convert';

import 'package:food_delivery_aplication/domain/product/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  static Future<List<ProductModel>> getproduct() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', 'feeds/list',
        {'limit': '18', 'start': '0', 'tag': 'list.recipe.popular'});

    final response = await http.get(uri, headers: {
      'x-rapidapi-host': 'yummly2.p.rapidapi.com',
      'x-rapidapi-key': '67cc35745bmshd35b5bffe483665p15af9fjsn2c5d01eb7577'
    });
    print(response.body);

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    return ProductModel.productModelFromSnapshot(_temp);
  }
}
