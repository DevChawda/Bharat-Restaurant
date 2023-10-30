import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FirstpageScreen extends StatelessWidget {
  const FirstpageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle92,
                          height: 132.v,
                          width: 220.h,
                          margin: EdgeInsets.only(left: 22.h)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Sign up",
                          margin: EdgeInsets.only(right: 30.h),
                          onTap: () {
                            onTapSignup(context);
                          }),
                      CustomElevatedButton(
                          text: "login",
                          margin: EdgeInsets.only(
                              top: 54.v, right: 30.h, bottom: 24.v),
                          onTap: () {
                            onTapLogin(context);
                          })
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
