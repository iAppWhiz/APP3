import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/create_ad_screen/models/create_ad_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateAdScreen.
///
/// This class manages the state of the CreateAdScreen, including the
/// current createAdModelObj
class CreateAdController extends GetxController {
  TextEditingController writeheadlineController = TextEditingController();

  TextEditingController addrelatedhashtagsController = TextEditingController();

  Rx<CreateAdModel> createAdModelObj = CreateAdModel().obs;

  @override
  void onClose() {
    super.onClose();
    writeheadlineController.dispose();
    addrelatedhashtagsController.dispose();
  }
}
