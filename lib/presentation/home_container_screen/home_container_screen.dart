import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/all_ads_page/all_ads_page.dart';
import 'package:prakash_s_application3/presentation/home_page/home_page.dart';
import 'package:prakash_s_application3/presentation/market_tab_container_page/market_tab_container_page.dart';
import 'package:prakash_s_application3/presentation/news_by_google_source_page/news_by_google_source_page.dart';
import 'package:prakash_s_application3/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Banks:
        return AppRoutes.homePage;
      case BottomBarEnum.News:
        return AppRoutes.newsByGoogleSourcePage;
      case BottomBarEnum.Allads:
        return AppRoutes.allAdsPage;
      case BottomBarEnum.Market:
        return AppRoutes.marketTabContainerPage;
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.newsByGoogleSourcePage:
        return NewsByGoogleSourcePage();
      case AppRoutes.allAdsPage:
        return AllAdsPage();
      case AppRoutes.marketTabContainerPage:
        return MarketTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
