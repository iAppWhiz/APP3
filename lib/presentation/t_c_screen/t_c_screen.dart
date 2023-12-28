import 'controller/t_c_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_checkbox_button.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TCScreen extends GetWidget<TCController> {
  const TCScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMitilLogo,
                height: 115.v,
                width: 139.h,
              ),
              Spacer(
                flex: 32,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkCircle,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 28.v,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 221.h,
                        margin: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_otp_has_been_confirmed".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 67,
              ),
              _buildAgreeTheTermsAndConditions(),
            ],
          ),
        ),
        bottomNavigationBar: _buildSignup(),
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
        text: "lbl_confirmation".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildAgreeTheTermsAndConditions() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 75.h),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_agree_the_terms".tr,
            value: controller.agreeTheTermsAndConditions.value,
            onChange: (value) {
              controller.agreeTheTermsAndConditions.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignup() {
    return CustomElevatedButton(
      text: "lbl_signup".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray300,
    );
  }
}
