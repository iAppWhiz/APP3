import 'controller/all_ads_controller.dart';
import 'models/all_ads_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';

class AllAdsPage extends StatelessWidget {
  AllAdsPage({Key? key})
      : super(
          key: key,
        );

  AllAdsController controller = Get.put(AllAdsController(AllAdsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 634.v,
          width: double.maxFinite,
          padding: EdgeInsets.all(12.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle165445,
                height: 604.v,
                width: 369.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              _buildCard(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "lbl_all_ads".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCreate,
          margin: EdgeInsets.fromLTRB(12.h, 24.v, 12.h, 23.v),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildCard() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 6.v),
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.gradientBlackFToBlackF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 25.v),
            CustomImageView(
              imagePath: ImageConstant.imgComponent3,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 4.h),
            ),
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 121.h,
                  margin: EdgeInsets.only(top: 11.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPeopleAvatar,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        child: Text(
                          "lbl_dale_peterson".tr,
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChat,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 196.h,
                    bottom: 19.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 216.h,
                        child: Text(
                          "msg_5_best_ways_to_transfer".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallSemiBold,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_1_hr_ago".tr,
                        style: CustomTextStyles.bodySmallGray400,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgMoreVertical,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
