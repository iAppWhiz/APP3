import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/all_ads_page/models/all_ads_model.dart';

/// A controller class for the AllAdsPage.
///
/// This class manages the state of the AllAdsPage, including the
/// current allAdsModelObj
class AllAdsController extends GetxController {
  AllAdsController(this.allAdsModelObj);

  Rx<AllAdsModel> allAdsModelObj;
}
