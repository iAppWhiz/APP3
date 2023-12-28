import 'controller/create_ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_elevated_button.dart';
import 'package:prakash_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateAdScreen extends GetWidget<CreateAdController> {
  const CreateAdScreen({Key? key})
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
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUploadSection(),
              SizedBox(height: 16.v),
              Divider(),
              SizedBox(height: 21.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "lbl_headline".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.writeheadlineController,
                hintText: "msg_write_headline".tr,
              ),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "lbl_description".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 18.v),
              Text(
                "msg_write_some_description".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 46.v),
              Divider(),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "lbl_tags".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.addrelatedhashtagsController,
                hintText: "msg_add_related_hashtags".tr,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildPostAdd(),
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
        text: "lbl_create_an_add".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildUploadSection() {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_upload_your_ad_image_video".tr,
                style: CustomTextStyles.bodyMediumGray300_1,
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "msg_max_file_size".tr,
                  style: CustomTextStyles.bodySmallGray300,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_upload".tr,
              style: CustomTextStyles.bodyLargePrimary.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpload,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostAdd() {
    return CustomElevatedButton(
      text: "lbl_post_add".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 24.v,
      ),
    );
  }
}
