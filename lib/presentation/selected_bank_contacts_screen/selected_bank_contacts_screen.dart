import '../selected_bank_contacts_screen/widgets/contactcard_item_widget.dart';
import 'controller/selected_bank_contacts_controller.dart';
import 'models/contactcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:prakash_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:prakash_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:prakash_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SelectedBankContactsScreen
    extends GetWidget<SelectedBankContactsController> {
  const SelectedBankContactsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(15.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_hdfc_bank".tr,
                              style: CustomTextStyles.titleMedium16,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_telangana".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Divider(
                color: appTheme.gray900,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                height: 441.v,
                width: 369.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 95.v),
                        child: SizedBox(
                          width: 369.h,
                          child: Divider(
                            color: appTheme.gray90002,
                          ),
                        ),
                      ),
                    ),
                    _buildContactCard(),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
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
        text: "lbl_hdfc_bank".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildContactCard() {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 19.5.v),
              child: SizedBox(
                width: 369.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray90002,
                ),
              ),
            );
          },
          itemCount: controller.selectedBankContactsModelObj.value
              .contactcardItemList.value.length,
          itemBuilder: (context, index) {
            ContactcardItemModel model = controller.selectedBankContactsModelObj
                .value.contactcardItemList.value[index];
            return ContactcardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
