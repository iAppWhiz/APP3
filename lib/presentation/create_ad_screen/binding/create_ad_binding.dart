import '../controller/create_ad_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAdScreen.
///
/// This class ensures that the CreateAdController is created when the
/// CreateAdScreen is first loaded.
class CreateAdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAdController());
  }
}
