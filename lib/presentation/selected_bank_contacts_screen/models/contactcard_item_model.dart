import '../../../core/app_export.dart';

/// This class is used in the [contactcard_item_widget] screen.
class ContactcardItemModel {
  ContactcardItemModel({
    this.bankName,
    this.accountNumber,
    this.id,
  }) {
    bankName = bankName ?? Rx("HDFC Bank");
    accountNumber = accountNumber ?? Rx("040 - 404 XXXX XXXX 456");
    id = id ?? Rx("");
  }

  Rx<String>? bankName;

  Rx<String>? accountNumber;

  Rx<String>? id;
}
