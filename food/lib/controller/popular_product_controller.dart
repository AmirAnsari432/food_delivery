import 'package:food/data/repository/popular_product_repo.dart';
import 'package:food/models/products_model.dart';
import 'package:get/get.dart';

class PopulerProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopulerProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }
}
