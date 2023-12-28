import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "iPhone 14 Pro - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iphone14ProOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Singup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "T&C".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tCScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Singup/Email".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singupEmailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selected Bank/Contacts".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectedBankContactsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Selected Bank/Universal contact".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectedBankUniversalContactScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Initiate call".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.initiateCallScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Ad".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createAdScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Ad/Selected".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAdSelectedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Add".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createAddScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
