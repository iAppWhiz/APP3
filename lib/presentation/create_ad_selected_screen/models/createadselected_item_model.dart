import '../../../core/app_export.dart';

/// This class is used in the [createadselected_item_widget] screen.
class CreateadselectedItemModel {
  CreateadselectedItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle165447);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
