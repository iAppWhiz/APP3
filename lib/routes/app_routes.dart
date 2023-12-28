import 'package:prakash_s_application3/presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';
import 'package:prakash_s_application3/presentation/iphone_14_pro_one_screen/binding/iphone_14_pro_one_binding.dart';
import 'package:prakash_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:prakash_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:prakash_s_application3/presentation/singup_screen/singup_screen.dart';
import 'package:prakash_s_application3/presentation/singup_screen/binding/singup_binding.dart';
import 'package:prakash_s_application3/presentation/otp_screen/otp_screen.dart';
import 'package:prakash_s_application3/presentation/otp_screen/binding/otp_binding.dart';
import 'package:prakash_s_application3/presentation/t_c_screen/t_c_screen.dart';
import 'package:prakash_s_application3/presentation/t_c_screen/binding/t_c_binding.dart';
import 'package:prakash_s_application3/presentation/singup_email_screen/singup_email_screen.dart';
import 'package:prakash_s_application3/presentation/singup_email_screen/binding/singup_email_binding.dart';
import 'package:prakash_s_application3/presentation/home_container_screen/home_container_screen.dart';
import 'package:prakash_s_application3/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:prakash_s_application3/presentation/selected_bank_contacts_screen/selected_bank_contacts_screen.dart';
import 'package:prakash_s_application3/presentation/selected_bank_contacts_screen/binding/selected_bank_contacts_binding.dart';
import 'package:prakash_s_application3/presentation/selected_bank_universal_contact_screen/selected_bank_universal_contact_screen.dart';
import 'package:prakash_s_application3/presentation/selected_bank_universal_contact_screen/binding/selected_bank_universal_contact_binding.dart';
import 'package:prakash_s_application3/presentation/initiate_call_screen/initiate_call_screen.dart';
import 'package:prakash_s_application3/presentation/initiate_call_screen/binding/initiate_call_binding.dart';
import 'package:prakash_s_application3/presentation/create_ad_screen/create_ad_screen.dart';
import 'package:prakash_s_application3/presentation/create_ad_screen/binding/create_ad_binding.dart';
import 'package:prakash_s_application3/presentation/create_ad_selected_screen/create_ad_selected_screen.dart';
import 'package:prakash_s_application3/presentation/create_ad_selected_screen/binding/create_ad_selected_binding.dart';
import 'package:prakash_s_application3/presentation/create_add_screen/create_add_screen.dart';
import 'package:prakash_s_application3/presentation/create_add_screen/binding/create_add_binding.dart';
import 'package:prakash_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:prakash_s_application3/presentation/profile_screen/binding/profile_binding.dart';
import 'package:prakash_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:prakash_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone14ProOneScreen = '/iphone_14_pro_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String singupScreen = '/singup_screen';

  static const String otpScreen = '/otp_screen';

  static const String tCScreen = '/t_c_screen';

  static const String singupEmailScreen = '/singup_email_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String selectedBankContactsScreen =
      '/selected_bank_contacts_screen';

  static const String selectedBankUniversalContactScreen =
      '/selected_bank_universal_contact_screen';

  static const String initiateCallScreen = '/initiate_call_screen';

  static const String newsByGoogleSourcePage = '/news_by_google_source_page';

  static const String allAdsPage = '/all_ads_page';

  static const String createAdScreen = '/create_ad_screen';

  static const String createAdSelectedScreen = '/create_ad_selected_screen';

  static const String createAddScreen = '/create_add_screen';

  static const String profileScreen = '/profile_screen';

  static const String marketPage = '/market_page';

  static const String marketTabContainerPage = '/market_tab_container_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone14ProOneScreen,
      page: () => Iphone14ProOneScreen(),
      bindings: [
        Iphone14ProOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: singupScreen,
      page: () => SingupScreen(),
      bindings: [
        SingupBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: tCScreen,
      page: () => TCScreen(),
      bindings: [
        TCBinding(),
      ],
    ),
    GetPage(
      name: singupEmailScreen,
      page: () => SingupEmailScreen(),
      bindings: [
        SingupEmailBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: selectedBankContactsScreen,
      page: () => SelectedBankContactsScreen(),
      bindings: [
        SelectedBankContactsBinding(),
      ],
    ),
    GetPage(
      name: selectedBankUniversalContactScreen,
      page: () => SelectedBankUniversalContactScreen(),
      bindings: [
        SelectedBankUniversalContactBinding(),
      ],
    ),
    GetPage(
      name: initiateCallScreen,
      page: () => InitiateCallScreen(),
      bindings: [
        InitiateCallBinding(),
      ],
    ),
    GetPage(
      name: createAdScreen,
      page: () => CreateAdScreen(),
      bindings: [
        CreateAdBinding(),
      ],
    ),
    GetPage(
      name: createAdSelectedScreen,
      page: () => CreateAdSelectedScreen(),
      bindings: [
        CreateAdSelectedBinding(),
      ],
    ),
    GetPage(
      name: createAddScreen,
      page: () => CreateAddScreen(),
      bindings: [
        CreateAddBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone14ProOneScreen(),
      bindings: [
        Iphone14ProOneBinding(),
      ],
    )
  ];
}
