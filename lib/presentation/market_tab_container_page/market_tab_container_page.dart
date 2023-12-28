import 'controller/market_tab_container_controller.dart';
import 'models/market_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/market_page/market_page.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_title_image.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';

class MarketTabContainerPage extends StatelessWidget {
  MarketTabContainerPage({Key? key})
      : super(
          key: key,
        );

  MarketTabContainerController controller =
      Get.put(MarketTabContainerController(MarketTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMarketToday(),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_currency_rate".tr,
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildTabview(),
              SizedBox(
                height: 474.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MarketPage(),
                    MarketPage(),
                    MarketPage(),
                    MarketPage(),
                  ],
                ),
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
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgMitilLogo,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAlert,
          margin: EdgeInsets.fromLTRB(12.h, 24.v, 12.h, 23.v),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildMarketToday() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 19.v, 12.h, 18.v),
      decoration: AppDecoration.outlineOnSecondaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Text(
            "lbl_market_today".tr,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 37.v,
      width: 369.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray300,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray300.withOpacity(0.6),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.colorScheme.primary,
              width: 2.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_us_dollar".tr,
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.7,
              child: Text(
                "lbl_euro".tr,
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.7,
              child: Text(
                "lbl_yuan".tr,
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.7,
              child: Text(
                "lbl_riyal".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
