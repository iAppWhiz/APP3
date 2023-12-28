import '../create_ad_selected_screen/widgets/createadselected_item_widget.dart';
import 'controller/create_ad_selected_controller.dart';
import 'models/createadselected_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_drop_down.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';
import 'package:prakash_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CreateAdSelectedScreen extends GetWidget<CreateAdSelectedController> {
  const CreateAdSelectedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(12.h),
          child: Column(
            children: [
              _buildImageStack(),
              SizedBox(height: 24.v),
              _buildCreateAdSelected(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_create_an_ad".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildImageStack() {
    return SizedBox(
      height: 220.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle165446,
            height: 220.v,
            width: 369.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAdSelected() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: CustomDropDown(
                width: 75.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                hintText: "lbl_gallery".tr,
                items: controller
                    .createAdSelectedModelObj.value.dropdownItemList!.value,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgComponent2,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgScanCamera,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 20.h),
            ),
          ],
        ),
        SizedBox(height: 22.v),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 85.v,
              crossAxisCount: 4,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.createAdSelectedModelObj.value
                .createadselectedItemList.value.length,
            itemBuilder: (context, index) {
              CreateadselectedItemModel model = controller
                  .createAdSelectedModelObj
                  .value
                  .createadselectedItemList
                  .value[index];
              return CreateadselectedItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
    );
  }
}
