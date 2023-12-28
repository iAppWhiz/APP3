import 'controller/iphone_14_pro_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

class Iphone14ProOneScreen extends GetWidget<Iphone14ProOneController> {
  const Iphone14ProOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup427319039,
                    height: 180.v,
                    width: 196.h,
                    alignment: Alignment.center))));
  }
}
