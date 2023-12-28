import '../controller/singup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingupScreen.
///
/// This class ensures that the SingupController is created when the
/// SingupScreen is first loaded.
class SingupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingupController());
  }
}
