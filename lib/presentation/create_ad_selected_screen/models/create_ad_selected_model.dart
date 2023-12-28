import 'package:prakash_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'createadselected_item_model.dart';

/// This class defines the variables used in the [create_ad_selected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateAdSelectedModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<CreateadselectedItemModel>> createadselectedItemList = Rx([
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165447.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165449.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165450.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165451.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165452.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165453.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165454.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165455.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165456.obs),
    CreateadselectedItemModel(rectangle: ImageConstant.imgRectangle165457.obs)
  ]);
}
