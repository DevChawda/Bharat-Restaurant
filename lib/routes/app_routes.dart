import 'package:flutter/material.dart';
import 'package:bharat_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:bharat_app/presentation/sign_in_page_screen/sign_in_page_screen.dart';
import 'package:bharat_app/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:bharat_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:bharat_app/presentation/password_done_screen/password_done_screen.dart';
import 'package:bharat_app/presentation/manu_one_screen/manu_one_screen.dart';
import 'package:bharat_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:bharat_app/presentation/order_history_screen/order_history_screen.dart';
import 'package:bharat_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:bharat_app/presentation/my_address_screen/my_address_screen.dart';
import 'package:bharat_app/presentation/add_address_screen/add_address_screen.dart';
import 'package:bharat_app/presentation/favorite_items_screen/favorite_items_screen.dart';
import 'package:bharat_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:bharat_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String signInPageScreen = '/sign_in_page_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String passwordDoneScreen = '/password_done_screen';

  static const String manuOneScreen = '/manu_one_screen';

  static const String profilePage = '/profile_page';

  static const String profileContainerScreen = '/profile_container_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String myAddressScreen = '/my_address_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String favoriteItemsScreen = '/favorite_items_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    signInPageScreen: (context) => SingInScreen(),
    signUpPageScreen: (context) => SingUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    passwordDoneScreen: (context) => PasswordDoneScreen(),
    manuOneScreen: (context) => ManuOneScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    myAddressScreen: (context) => MyAddressScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    favoriteItemsScreen: (context) => FavoriteItemsScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
