import '../controller/create_ad_selected_controller.dart';
import '../models/createadselected_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class CreateadselectedItemWidget extends StatelessWidget {
  CreateadselectedItemWidget(
    this.createadselectedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreateadselectedItemModel createadselectedItemModelObj;

  var controller = Get.find<CreateAdSelectedController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: createadselectedItemModelObj.rectangle!.value,
        height: 84.adaptSize,
        width: 84.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
