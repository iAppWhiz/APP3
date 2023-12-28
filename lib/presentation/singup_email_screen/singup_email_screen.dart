import 'controller/singup_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SingupEmailScreen extends GetWidget<SingupEmailController> {
  const SingupEmailScreen({Key? key})
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
          padding: EdgeInsets.all(24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 38,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMitilLogo,
                height: 115.v,
                width: 139.h,
              ),
              SizedBox(height: 40.v),
              Container(
                width: 299.h,
                margin: EdgeInsets.only(
                  left: 23.h,
                  right: 22.h,
                ),
                child: Text(
                  "msg_all_banking_call".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(
                flex: 61,
              ),
              CustomElevatedButton(
                text: "msg_continue_with_gmail".tr,
                buttonStyle: CustomButtonStyles.fillGrayTL24,
                buttonTextStyle: CustomTextStyles.titleMediumGray900,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_mobile_number".tr,
              ),
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
        text: "lbl_signup".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }
}
