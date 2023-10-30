import 'dart:developer';

import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:bharat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore_for_file: must_be_immutable
class SingUpScreen extends StatelessWidget {
  SingUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwardController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void sign_up_screen() async {
    String name = nameController.text;
    String email = emailController.text;
    String Password = passwardController.text;
    String ConfirmPassword = confirmpasswordController.text;

    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: Password);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.h, top: 74.v, right: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sign up",
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              controller: nameController,
                              hintText: "NAME",
                              suffix: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 24.h, 15.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27.h),
                                      border: Border.all(
                                          color: appTheme.gray300, width: 1.h)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 66.v)),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "EMAIL",
                              suffix: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 24.h, 15.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27.h),
                                      border: Border.all(
                                          color: appTheme.gray300, width: 1.h)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 66.v)),
                          CustomTextFormField(
                              controller: passwardController,
                              hintText: "PASSWORD",
                              suffix: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 24.h, 15.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27.h),
                                      border: Border.all(
                                          color: appTheme.gray300, width: 1.h)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 66.v)),
                          SizedBox(height: 20.v),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              hintText: "CONFIRM PASSWORD",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 24.h, 15.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27.h),
                                      border: Border.all(
                                          color: appTheme.gray300, width: 1.h)),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmarkPrimary)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 66.v),
                              obscureText: true),
                          SizedBox(height: 32.v),
                          CustomElevatedButton(
                              text: "sign up".toUpperCase(),
                              onTap: () async {
                                log('');
                                sign_up_screen();
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwardController.text);
                                onTapSignin(context);
                              }),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapsignup(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account? ",
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "Sign in.",
                                        style:
                                            CustomTextStyles.bodyLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapsignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }
}
