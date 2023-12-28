import '../controller/selected_bank_universal_contact_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectedBankUniversalContactScreen.
///
/// This class ensures that the SelectedBankUniversalContactController is created when the
/// SelectedBankUniversalContactScreen is first loaded.
class SelectedBankUniversalContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedBankUniversalContactController());
  }
}
