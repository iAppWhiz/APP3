import 'controller/singup_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';
import 'package:prakash_s_application3/widgets/custom_phone_number.dart';
import 'package:prakash_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SingupScreen extends GetWidget<SingupController> {
  const SingupScreen({Key? key})
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
                    "lbl_full_name".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.fullNameController,
                hintText: "lbl_asif_mohammad".tr,
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    "msg_enter_mobile_number".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Column(
                children: [
                  Obx(
                    () => CustomPhoneNumber(
                      country: controller.selectedCountry.value,
                      controller: controller.phoneNumberController,
                      onTap: (Country value) {
                        controller.selectedCountry.value = value;
                      },
                    ),
                  ),
                  Container(
                    height: 1.v,
                    width: 369.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray900,
                    ),
                  ),
                ],
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
        text: "lbl_signup".tr,
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
