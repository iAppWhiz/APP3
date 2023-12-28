import '../controller/selected_bank_contacts_controller.dart';
import '../models/contactcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ContactcardItemWidget extends StatelessWidget {
  ContactcardItemWidget(
    this.contactcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContactcardItemModel contactcardItemModelObj;

  var controller = Get.find<SelectedBankContactsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: Obx(
                    () => Text(
                      contactcardItemModelObj.bankName!.value,
                      style: CustomTextStyles.bodyMediumGray300,
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                Obx(
                  () => Text(
                    contactcardItemModelObj.accountNumber!.value,
                    style: CustomTextStyles.titleMediumMedium16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgCallOutbound,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
