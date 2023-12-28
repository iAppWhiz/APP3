import '../controller/home_controller.dart';
import '../models/homegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class HomegridItemWidget extends StatelessWidget {
  HomegridItemWidget(
    this.homegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomegridItemModel homegridItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.adaptSize,
          width: 80.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 22.v,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: homegridItemModelObj.dynamicImageProp!.value,
              height: 34.v,
              width: 31.h,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        Obx(
          () => Text(
            homegridItemModelObj.dynamicTextProp!.value,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
