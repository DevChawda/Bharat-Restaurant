import 'package:bharat_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 42.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup,
                          height: 164.v,
                          width: 158.h,
                          onTap: () {
                            onTapImgImage(context);
                          }),
                      SizedBox(height: 34.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtBharatrestauran(context);
                          },
                          child: Text("Bharat Restaurant",
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 1.v)
                    ]))));
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapTxtBharatrestauran(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }
}
