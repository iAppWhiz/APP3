import '../../../core/app_export.dart';

/// This class is used in the [homegrid_item_widget] screen.
class HomegridItemModel {
  HomegridItemModel({
    this.dynamicImageProp,
    this.dynamicTextProp,
    this.id,
  }) {
    dynamicImageProp = dynamicImageProp ?? Rx(ImageConstant.imgInbox);
    dynamicTextProp = dynamicTextProp ?? Rx("ICICI");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicImageProp;

  Rx<String>? dynamicTextProp;

  Rx<String>? id;
}
