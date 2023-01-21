import 'package:masterclass_app/imports.dart';

class ProductsStore extends ChangeNotifier {
  var state = <DesignPatternCommonModel>[];

  final service = ProductsService();

  Future<void> getProducts() async {
    state = await service.getProducts();
    notifyListeners();
  }
}
