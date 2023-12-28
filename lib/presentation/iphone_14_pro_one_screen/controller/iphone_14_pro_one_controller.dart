import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/iphone_14_pro_one_screen/models/iphone_14_pro_one_model.dart';

/// A controller class for the Iphone14ProOneScreen.
///
/// This class manages the state of the Iphone14ProOneScreen, including the
/// current iphone14ProOneModelObj
class Iphone14ProOneController extends GetxController {
  Rx<Iphone14ProOneModel> iphone14ProOneModelObj = Iphone14ProOneModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.splashScreen,
      );
    });
  }
}
