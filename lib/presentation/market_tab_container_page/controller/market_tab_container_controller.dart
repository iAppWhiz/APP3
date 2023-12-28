import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/market_tab_container_page/models/market_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MarketTabContainerPage.
///
/// This class manages the state of the MarketTabContainerPage, including the
/// current marketTabContainerModelObj
class MarketTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MarketTabContainerController(this.marketTabContainerModelObj);

  Rx<MarketTabContainerModel> marketTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
