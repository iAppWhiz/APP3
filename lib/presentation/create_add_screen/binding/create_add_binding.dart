import '../controller/create_add_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAddScreen.
///
/// This class ensures that the CreateAddController is created when the
/// CreateAddScreen is first loaded.
class CreateAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAddController());
  }
}
