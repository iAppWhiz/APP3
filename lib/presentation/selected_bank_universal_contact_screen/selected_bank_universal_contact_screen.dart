import 'controller/selected_bank_universal_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SelectedBankUniversalContactScreen
    extends GetWidget<SelectedBankUniversalContactController> {
  const SelectedBankUniversalContactScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(15.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_hdfc_bank".tr,
                              style: CustomTextStyles.titleMedium16,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_telangana".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Divider(
                color: appTheme.gray900,
              ),
              SizedBox(height: 18.v),
              _buildSelectedBankUniversal(),
              SizedBox(height: 20.v),
              Divider(
                color: appTheme.gray90002,
                indent: 12.h,
                endIndent: 12.h,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_hdfc_bank".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildSelectedBankUniversal() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              children: [
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "msg_hdfc_bank_universal".tr,
                    style: CustomTextStyles.bodyMediumGray300,
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "msg_040_404_xxxx_xxxx".tr,
                  style: CustomTextStyles.titleMediumMedium16,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgCallOutbound,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
