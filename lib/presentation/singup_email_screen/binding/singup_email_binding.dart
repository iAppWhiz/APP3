import '../controller/singup_email_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingupEmailScreen.
///
/// This class ensures that the SingupEmailController is created when the
/// SingupEmailScreen is first loaded.
class SingupEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingupEmailController());
  }
}
