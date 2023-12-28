import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/t_c_screen/models/t_c_model.dart';

/// A controller class for the TCScreen.
///
/// This class manages the state of the TCScreen, including the
/// current tCModelObj
class TCController extends GetxController {
  Rx<TCModel> tCModelObj = TCModel().obs;

  Rx<bool> agreeTheTermsAndConditions = false.obs;
}
