import '../controller/selected_bank_contacts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectedBankContactsScreen.
///
/// This class ensures that the SelectedBankContactsController is created when the
/// SelectedBankContactsScreen is first loaded.
class SelectedBankContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedBankContactsController());
  }
}
