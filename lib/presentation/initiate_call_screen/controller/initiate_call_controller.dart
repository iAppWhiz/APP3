import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/initiate_call_screen/models/initiate_call_model.dart';

/// A controller class for the InitiateCallScreen.
///
/// This class manages the state of the InitiateCallScreen, including the
/// current initiateCallModelObj
class InitiateCallController extends GetxController {
  Rx<InitiateCallModel> initiateCallModelObj = InitiateCallModel().obs;
}
