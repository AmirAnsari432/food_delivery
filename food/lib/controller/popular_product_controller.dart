// ignore_for_file: avoid_print

import 'package:food/data/repository/popular_product_repo.dart';
import 'package:food/models/products_model.dart';
import 'package:get/get.dart';

class PopulerProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopulerProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("Got product");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("Could not get products recommended");
    }
  }
}
