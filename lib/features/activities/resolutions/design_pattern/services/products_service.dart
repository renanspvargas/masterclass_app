import 'package:masterclass_app/imports.dart';
import 'package:http/http.dart' as http;

class ProductsService {
  // Explanation for this ip is in the readme
  final _url = 'http://10.0.2.2:3031/products';

  Future<List<DesignPatternCommonModel>> getProducts() async {
    try {
      final response = await http.get(Uri.parse(_url));
      final json = jsonDecode(response.body) as List;
      List<DesignPatternCommonModel> products =
          json.map((e) => DesignPatternCommonModel.fromJson(e)).toList();
      return products;
    } catch (e) {
      print(e);
      return [];
    }
  }
}