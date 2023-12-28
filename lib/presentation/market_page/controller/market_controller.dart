import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/market_page/models/market_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MarketPage.
///
/// This class manages the state of the MarketPage, including the
/// current marketModelObj
class MarketController extends GetxController {
  MarketController(this.marketModelObj);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  Rx<MarketModel> marketModelObj;

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceController1.dispose();
    cityController.dispose();
  }
}
