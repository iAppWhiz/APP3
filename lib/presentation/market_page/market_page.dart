import 'controller/market_controller.dart';
import 'models/market_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/custom_text_form_field.dart';

class MarketPage extends StatelessWidget {
  MarketPage({Key? key})
      : super(
          key: key,
        );

  MarketController controller = Get.put(MarketController(MarketModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildSixtyFourColumn(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceFrame() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_gold_rate".tr,
          style: CustomTextStyles.titleMediumMedium,
        ),
        SizedBox(height: 11.v),
        Opacity(
          opacity: 0.7,
          child: Text(
            "lbl_select_state".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 20.v),
        CustomTextFormField(
          controller: controller.cityController,
          hintText: "lbl_hyderabad".tr,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.only(
              left: 30.h,
              bottom: 16.v,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 36.v,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 1.v),
        ),
        SizedBox(height: 10.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillGray90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "lbl_22_carat".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_52_000".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              Spacer(
                flex: 50,
              ),
              SizedBox(
                height: 53.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  color: appTheme.blueGray800,
                  indent: 5.h,
                  endIndent: 4.h,
                ),
              ),
              Spacer(
                flex: 29,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "lbl_24_carat".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_64_000".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              Spacer(
                flex: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStocksFrame() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_stocks".tr,
          style: CustomTextStyles.titleMediumMedium,
        ),
        SizedBox(height: 12.v),
        Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 71.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillGray90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_bse".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 72.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillGray90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_nse".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 81.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillGray90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_nifty".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 93.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillGray90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_sensex".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtyFourColumn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: CustomTextFormField(
                    controller: controller.priceController,
                    hintText: "lbl_1".tr,
                    hintStyle: CustomTextStyles.bodyMediumGray300_1,
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    filled: true,
                    fillColor: appTheme.gray90001,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: CustomTextFormField(
                    controller: controller.priceController1,
                    hintText: "lbl_inr_84_50".tr,
                    hintStyle: CustomTextStyles.bodyMediumGray300_1,
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    filled: true,
                    fillColor: appTheme.gray90001,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 31.v),
          _buildPriceFrame(),
          SizedBox(height: 32.v),
          _buildStocksFrame(),
        ],
      ),
    );
  }
}
