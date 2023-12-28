import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/selected_bank_universal_contact_screen/models/selected_bank_universal_contact_model.dart';

/// A controller class for the SelectedBankUniversalContactScreen.
///
/// This class manages the state of the SelectedBankUniversalContactScreen, including the
/// current selectedBankUniversalContactModelObj
class SelectedBankUniversalContactController extends GetxController {
  Rx<SelectedBankUniversalContactModel> selectedBankUniversalContactModelObj =
      SelectedBankUniversalContactModel().obs;
}
