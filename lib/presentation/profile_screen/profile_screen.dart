import 'controller/profile_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/core/utils/validation_functions.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';
import 'package:prakash_s_application3/widgets/custom_icon_button.dart';
import 'package:prakash_s_application3/widgets/custom_phone_number.dart';
import 'package:prakash_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 16.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 94.adaptSize,
                    width: 94.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse10,
                          height: 94.adaptSize,
                          width: 94.adaptSize,
                          radius: BorderRadius.circular(
                            47.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 13.v),
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
                _buildFullName(),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      "lbl_mobile_number".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                _buildPhoneNumber(),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      "lbl_email_id".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                _buildEmail(),
                SizedBox(height: 24.v),
                _buildMyAccountDetails(
                  text: "lbl_my_ads".tr,
                ),
                SizedBox(height: 21.v),
                Divider(),
                SizedBox(height: 23.v),
                _buildMyAccountDetails(
                  text: "msg_my_account_details".tr,
                ),
                SizedBox(height: 22.v),
                Divider(),
                SizedBox(height: 24.v),
                _buildMyAccountDetails(
                  text: "lbl_settings".tr,
                ),
                SizedBox(height: 21.v),
                Divider(),
                SizedBox(height: 9.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSave(),
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
        text: "lbl_my_profile".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
      controller: controller.fullNameController,
      hintText: "lbl_asif_mohammad".tr,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_asifmd_1234_gmail_com".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
      text: "lbl_save".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
    );
  }

  /// Common widget
  Widget _buildMyAccountDetails({required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.gray300,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }
}
