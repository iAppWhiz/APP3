import 'package:prakash_s_application3/core/app_export.dart';
import 'package:prakash_s_application3/presentation/news_by_google_source_page/models/news_by_google_source_model.dart';

/// A controller class for the NewsByGoogleSourcePage.
///
/// This class manages the state of the NewsByGoogleSourcePage, including the
/// current newsByGoogleSourceModelObj
class NewsByGoogleSourceController extends GetxController {
  NewsByGoogleSourceController(this.newsByGoogleSourceModelObj);

  Rx<NewsByGoogleSourceModel> newsByGoogleSourceModelObj;
}
