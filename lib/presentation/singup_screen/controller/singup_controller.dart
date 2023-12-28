import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/singup_screen/models/singup_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SingupScreen.
///
/// This class manages the state of the SingupScreen, including the
/// current singupModelObj
class SingupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<SingupModel> singupModelObj = SingupModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    phoneNumberController.dispose();
  }
}
