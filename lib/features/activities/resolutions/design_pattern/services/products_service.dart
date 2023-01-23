import 'package:masterclass_app/features/activities/resolutions/design_pattern/errors/products_errors.dart';
import 'package:masterclass_app/imports.dart';
import 'package:http/http.dart';

class ProductsService {
  final Client _client;

  ProductsService([client]) : _client = client ?? Client();

  // Explanation for this ip is in the readme
  final _url = 'http://10.0.2.2:3031/products';

  Future<List<DesignPatternCommonModel>> getProducts() async {
    final response = await _client.get(Uri.parse(_url));

    if (response.statusCode == 404) {
      throw ProductOffilineException('404');
    }

    final json = jsonDecode(response.body) as List;
    List<DesignPatternCommonModel> products =
        json.map((e) => DesignPatternCommonModel.fromJson(e)).toList();
    return products;
  }
}
