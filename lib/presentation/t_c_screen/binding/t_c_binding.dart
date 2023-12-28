import '../controller/t_c_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TCScreen.
///
/// This class ensures that the TCController is created when the
/// TCScreen is first loaded.
class TCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TCController());
  }
}
