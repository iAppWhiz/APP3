import 'controller/initiate_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InitiateCallScreen extends GetWidget<InitiateCallController> {
  const InitiateCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 481.v,
                        width: 381.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse7426x218,
                              height: 426.v,
                              width: 218.h,
                              alignment: Alignment.topRight,
                            ),
                            _buildConfirmationSection(),
                          ],
                        ),
                      ),
                      SizedBox(height: 79.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse8288x208,
                        height: 288.v,
                        width: 208.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationSection() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 41.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "msg_are_you_sure_initiate".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
            SizedBox(height: 17.v),
            Opacity(
              opacity: 0.6,
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "msg_hdfc_credit_card".tr,
                  style: CustomTextStyles.bodyMediumGray300,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "msg_040_404_xxxx_xxxx2".tr,
                style: CustomTextStyles.bodyMediumGray300Regular,
              ),
            ),
            SizedBox(height: 36.v),
            SizedBox(
              height: 59.v,
              width: 369.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 369.h,
                      child: Divider(
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 51.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            child: Text(
                              "lbl_initiate_a_call".tr,
                              style: CustomTextStyles.bodyMediumPrimary,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCallOutboundPrimary,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 12.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 45.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 19.v,
                              bottom: 18.v,
                            ),
                            child: Text(
                              "lbl_cancel".tr,
                              style: CustomTextStyles.bodyMediumErrorContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45.h),
                            child: SizedBox(
                              height: 59.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: theme.colorScheme.primaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
