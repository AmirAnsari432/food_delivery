import 'package:food/controller/popular_product_controller.dart';
import 'package:food/data/api/api_client.dart';
import 'package:food/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https.//mvs.bslmeiyu.com"));
  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => PopulerProductController(popularProductRepo: Get.find()));
}