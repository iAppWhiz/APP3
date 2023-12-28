import '../../../core/app_export.dart';
import 'contactcard_item_model.dart';

/// This class defines the variables used in the [selected_bank_contacts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectedBankContactsModel {
  Rx<List<ContactcardItemModel>> contactcardItemList = Rx([
    ContactcardItemModel(
        bankName: "HDFC Bank".obs,
        accountNumber: "040 - 404 XXXX XXXX 456".obs),
    ContactcardItemModel(
        bankName: "HDFC Credit Card".obs,
        accountNumber: "040 - 404 XXXX XXXX 042".obs),
    ContactcardItemModel(
        bankName: "HDFC Personal Loan".obs,
        accountNumber: "040 - 404 XXXX XXXX 248".obs),
    ContactcardItemModel(
        bankName: "HDFC Gold Loan".obs,
        accountNumber: "040 - 404 XXXX XXXX 180".obs)
  ]);
}
