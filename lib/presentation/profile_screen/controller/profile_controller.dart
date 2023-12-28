import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/profile_screen/models/profile_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
  }
}
