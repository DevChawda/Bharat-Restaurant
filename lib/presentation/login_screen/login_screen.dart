// ignore_for_file: must_be_immutable

import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
    TextEditingController emailController = TextEditingController();
      TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 161.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 115.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary))),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse1,
                                height: 91.v,
                                width: 103.h,
                                radius: BorderRadius.circular(51.h),
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 122.h))
                          ])),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("        Login",
                              style: CustomTextStyles.headlineSmallGray100)),
                      Padding(
                            padding: EdgeInsets.only(left: 37.h, top: 27.v),
                            child: Text("Email",
                                style: theme.textTheme.headlineSmall)),
                        CustomTextFormField(
                            controller: emailController,
                            margin: EdgeInsets.only(
                                left: 34.h, top: 8.v, right: 54.h),
                            textInputAction: TextInputAction.done,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray10001),
                      Padding(
                            padding: EdgeInsets.only(left: 37.h, top: 27.v),
                            child: Text("Password",
                                style: theme.textTheme.headlineSmall)),
                        CustomTextFormField(
                            controller: passwordController,
                            margin: EdgeInsets.only(
                                left: 34.h, top: 8.v, right: 54.h),
                            textInputAction: TextInputAction.done,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray10001),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotpassword(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 24.v, right: 56.h),
                                  child: Text("forgot password ?",
                                      style:
                                          CustomTextStyles.titleSmallRoboto)))),
                      CustomElevatedButton(
                          text: "login",
                          margin: EdgeInsets.only(
                              left: 32.h, top: 28.v, right: 56.h),
                          onTap: () {
                                      onTapLogin(context);
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtConfirmation(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 37.h, top: 32.v, bottom: 5.v),
                              child: Text("Don’t  have a account? Sign Up",
                                  style: theme.textTheme.titleSmall)))
                    ]))));
  }

  /// Navigates to the changepassScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the changepassScreen.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changepassScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapTxtConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
