import 'controller/news_by_google_source_controller.dart';
import 'models/news_by_google_source_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';

class NewsByGoogleSourcePage extends StatelessWidget {
  NewsByGoogleSourcePage({Key? key})
      : super(
          key: key,
        );

  NewsByGoogleSourceController controller =
      Get.put(NewsByGoogleSourceController(NewsByGoogleSourceModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: SizedBox(
              height: 1191.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImg3045,
                            height: 595.v,
                            width: 369.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImg3045,
                            height: 595.v,
                            width: 369.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 172.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 473.v),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.34, 0.7),
                          end: Alignment(0.34, 0),
                          colors: [
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                            theme.colorScheme.onErrorContainer,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_news".tr,
                style: theme.textTheme.titleMedium,
              ),
              TextSpan(
                text: "msg_powered_by_google".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      styleType: Style.bgOutline_1,
    );
  }
}
