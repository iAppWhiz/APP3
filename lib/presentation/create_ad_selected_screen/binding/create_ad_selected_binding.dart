import '../controller/create_ad_selected_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAdSelectedScreen.
///
/// This class ensures that the CreateAdSelectedController is created when the
/// CreateAdSelectedScreen is first loaded.
class CreateAdSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAdSelectedController());
  }
}
