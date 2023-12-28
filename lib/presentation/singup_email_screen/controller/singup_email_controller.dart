import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/singup_email_screen/models/singup_email_model.dart';

/// A controller class for the SingupEmailScreen.
///
/// This class manages the state of the SingupEmailScreen, including the
/// current singupEmailModelObj
class SingupEmailController extends GetxController {
  Rx<SingupEmailModel> singupEmailModelObj = SingupEmailModel().obs;
}
