import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/create_add_screen/models/create_add_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateAddScreen.
///
/// This class manages the state of the CreateAddScreen, including the
/// current createAddModelObj
class CreateAddController extends GetxController {
  TextEditingController transfermoneyfrombankappslikeUController =
      TextEditingController();

  TextEditingController banksupismoneydigitalupisvalueController =
      TextEditingController();

  Rx<CreateAddModel> createAddModelObj = CreateAddModel().obs;

  @override
  void onClose() {
    super.onClose();
    transfermoneyfrombankappslikeUController.dispose();
    banksupismoneydigitalupisvalueController.dispose();
  }
}
