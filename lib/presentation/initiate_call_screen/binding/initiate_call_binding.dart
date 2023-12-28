import '../controller/initiate_call_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InitiateCallScreen.
///
/// This class ensures that the InitiateCallController is created when the
/// InitiateCallScreen is first loaded.
class InitiateCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitiateCallController());
  }
}
