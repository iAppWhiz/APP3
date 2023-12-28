import '../../../core/app_export.dart';
import 'homegrid_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<HomegridItemModel>> homegridItemList = Rx([
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgInbox.obs,
        dynamicTextProp: "ICICI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgTelevision.obs,
        dynamicTextProp: "HDFC".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgBookmark.obs,
        dynamicTextProp: "Axis".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgUser.obs,
        dynamicTextProp: "SBI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgSettings.obs,
        dynamicTextProp: "Kotak".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgInbox.obs,
        dynamicTextProp: "ICICI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgTelevision.obs,
        dynamicTextProp: "HDFC".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgBookmark.obs,
        dynamicTextProp: "Axis".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgUser.obs,
        dynamicTextProp: "SBI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgSettings.obs,
        dynamicTextProp: "Kotak".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgInbox.obs,
        dynamicTextProp: "ICICI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgTelevision.obs,
        dynamicTextProp: "HDFC".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgBookmark.obs,
        dynamicTextProp: "Axis".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgUser.obs,
        dynamicTextProp: "SBI".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgSettings.obs,
        dynamicTextProp: "Kotak".obs),
    HomegridItemModel(
        dynamicImageProp: ImageConstant.imgInbox.obs,
        dynamicTextProp: "ICICI".obs)
  ]);
}
