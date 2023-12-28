import '../home_page/widgets/homegrid_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/homegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_title_image.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40.v,
                width: 369.h,
              ),
              SizedBox(height: 22.v),
              _buildHomeGrid(),
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
  Widget _buildHomeGrid() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 110.v,
            crossAxisCount: 4,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.homeModelObj.value.homegridItemList.value.length,
          itemBuilder: (context, index) {
            HomegridItemModel model =
                controller.homeModelObj.value.homegridItemList.value[index];
            return HomegridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
