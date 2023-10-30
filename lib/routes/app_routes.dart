import 'package:flutter/material.dart';
import 'package:e_farm/presentation/firstpage_screen/firstpage_screen.dart';
import 'package:e_farm/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:e_farm/presentation/login_screen/login_screen.dart';
import 'package:e_farm/presentation/home_screen/home_screen.dart';
import 'package:e_farm/presentation/tractor_screen/tractor_screen.dart';
import 'package:e_farm/presentation/machinary_screen/machinary_screen.dart';
import 'package:e_farm/presentation/seeds_screen/seeds_screen.dart';
import 'package:e_farm/presentation/land_screen/land_screen.dart';
import 'package:e_farm/presentation/tractor_one_screen/tractor_one_screen.dart';
import 'package:e_farm/presentation/tractor_two_screen/tractor_two_screen.dart';
import 'package:e_farm/presentation/machinary_one_screen/machinary_one_screen.dart';
import 'package:e_farm/presentation/machinary_two_screen/machinary_two_screen.dart';
import 'package:e_farm/presentation/seeds_one_screen/seeds_one_screen.dart';
import 'package:e_farm/presentation/seeds_two_screen/seeds_two_screen.dart';
import 'package:e_farm/presentation/land_one_screen/land_one_screen.dart';
import 'package:e_farm/presentation/land_two_screen/land_two_screen.dart';
import 'package:e_farm/presentation/sell_screen/sell_screen.dart';
import 'package:e_farm/presentation/sell_req_screen/sell_req_screen.dart';
import 'package:e_farm/presentation/account_screen/account_screen.dart';
import 'package:e_farm/presentation/profile_screen/profile_screen.dart';
import 'package:e_farm/presentation/settings_screen/settings_screen.dart';
import 'package:e_farm/presentation/changepassdone_screen/changepassdone_screen.dart';
import 'package:e_farm/presentation/changepass_screen/changepass_screen.dart';
import 'package:e_farm/presentation/help_screen/help_screen.dart';
import 'package:e_farm/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String firstpageScreen = '/firstpage_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String tractorScreen = '/tractor_screen';

  static const String machinaryScreen = '/machinary_screen';

  static const String seedsScreen = '/seeds_screen';

  static const String landScreen = '/land_screen';

  static const String tractorOneScreen = '/tractor_one_screen';

  static const String tractorTwoScreen = '/tractor_two_screen';

  static const String machinaryOneScreen = '/machinary_one_screen';

  static const String machinaryTwoScreen = '/machinary_two_screen';

  static const String seedsOneScreen = '/seeds_one_screen';

  static const String seedsTwoScreen = '/seeds_two_screen';

  static const String landOneScreen = '/land_one_screen';

  static const String landTwoScreen = '/land_two_screen';

  static const String sellScreen = '/sell_screen';

  static const String sellReqScreen = '/sell_req_screen';

  static const String accountScreen = '/account_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String changepassdoneScreen = '/changepassdone_screen';

  static const String changepassScreen = '/changepass_screen';

  static const String helpScreen = '/help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    firstpageScreen: (context) => FirstpageScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    homeScreen: (context) => HomeScreen(),
    tractorScreen: (context) => TractorScreen(),
    machinaryScreen: (context) => MachinaryScreen(),
    seedsScreen: (context) => SeedsScreen(),
    landScreen: (context) => LandScreen(),
    tractorOneScreen: (context) => TractorOneScreen(),
    tractorTwoScreen: (context) => TractorTwoScreen(),
    machinaryOneScreen: (context) => MachinaryOneScreen(),
    machinaryTwoScreen: (context) => MachinaryTwoScreen(),
    seedsOneScreen: (context) => SeedsOneScreen(),
    seedsTwoScreen: (context) => SeedsTwoScreen(),
    landOneScreen: (context) => LandOneScreen(),
    landTwoScreen: (context) => LandTwoScreen(),
    sellScreen: (context) => SellScreen(),
    sellReqScreen: (context) => SellReqScreen(),
    accountScreen: (context) => AccountScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingsScreen: (context) => SettingsScreen(),
    changepassdoneScreen: (context) => ChangepassdoneScreen(),
    changepassScreen: (context) => ChangepassScreen(),
    helpScreen: (context) => HelpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
