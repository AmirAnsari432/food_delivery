// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.64;
  static double pageViewTextContainer = screenHeight / 7.03;
  static double pageViewContainer = screenHeight / 3.84;
  // dynamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.3;
  static double height45 = screenHeight / 18.7;
  // dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.3;
// font
  static double font20 = screenHeight / 42.2;

  // radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.3;

  // icon size

  static double iconSize24 = screenHeight / 34.17;

// list view size

  static double ListViewImgSize = screenWidth / 3.25;
  static double ListViewTextContSize = screenWidth / 3.9;
}
