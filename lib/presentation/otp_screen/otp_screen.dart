import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';
import 'package:prakash_s_application3/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMitilLogo,
                height: 115.v,
                width: 139.h,
              ),
              SizedBox(height: 55.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    "lbl_enter_otp".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 47.v),
              Text(
                "lbl_resend_otp".tr,
                style: theme.textTheme.bodyLarge!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSendOtp(),
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
        text: "lbl_otp".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildSendOtp() {
    return CustomElevatedButton(
      text: "lbl_send_otp".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
    );
  }
}
