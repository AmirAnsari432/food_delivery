// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';
import 'package:food/utils/color.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widget/big_text.dart';
import 'package:food/widget/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              height: 1.8,
              size: Dimensions.font16,
              color: AppColor.paraColor,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                    size: Dimensions.font16,
                    color: AppColor.paraColor,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColor.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColor.mainColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
