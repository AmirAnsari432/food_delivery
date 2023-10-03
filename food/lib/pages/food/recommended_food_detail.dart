// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_adjacent_string_concatenation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/color.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widget/app_icon.dart';
import 'package:food/widget/big_text.dart';
import 'package:food/widget/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: "Delhi Darbaar")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(20)),
            pinned: true,
            backgroundColor: AppColor.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                      text:
                          "Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough.Delicious blend of spicy tomato sauce and marinated paneer and capsicum toppings with soft and fluffy dough."),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88" + " X " + "0",
                  color: AppColor.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColor.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.width20,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColor.mainColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
