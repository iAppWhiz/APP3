import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/selected_bank_contacts_screen/models/selected_bank_contacts_model.dart';

/// A controller class for the SelectedBankContactsScreen.
///
/// This class manages the state of the SelectedBankContactsScreen, including the
/// current selectedBankContactsModelObj
class SelectedBankContactsController extends GetxController {
  Rx<SelectedBankContactsModel> selectedBankContactsModelObj =
      SelectedBankContactsModel().obs;
}
