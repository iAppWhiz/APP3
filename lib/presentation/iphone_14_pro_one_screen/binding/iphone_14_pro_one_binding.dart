import '../controller/iphone_14_pro_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone14ProOneScreen.
///
/// This class ensures that the Iphone14ProOneController is created when the
/// Iphone14ProOneScreen is first loaded.
class Iphone14ProOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14ProOneController());
  }
}
