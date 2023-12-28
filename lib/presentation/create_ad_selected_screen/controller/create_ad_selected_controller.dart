import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/create_ad_selected_screen/models/create_ad_selected_model.dart';

/// A controller class for the CreateAdSelectedScreen.
///
/// This class manages the state of the CreateAdSelectedScreen, including the
/// current createAdSelectedModelObj
class CreateAdSelectedController extends GetxController {
  Rx<CreateAdSelectedModel> createAdSelectedModelObj =
      CreateAdSelectedModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in createAdSelectedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    createAdSelectedModelObj.value.dropdownItemList.refresh();
  }
}
