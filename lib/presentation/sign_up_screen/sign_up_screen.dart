import 'dart:developer';

import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
      TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: SizedBox(
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
                        SizedBox(height: 30.v),
                        Text("       Sign up",
                            style: CustomTextStyles.headlineSmallGray100),
                        Padding(
                            padding: EdgeInsets.only(left: 37.h, top: 27.v),
                            child: Text("Name",
                                style: theme.textTheme.headlineSmall)),
                        CustomTextFormField(
                            controller: nameController,
                            margin: EdgeInsets.only(
                                left: 34.h, top: 8.v, right: 54.h),
                            textInputAction: TextInputAction.done,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray10001),
                        Padding(
                            padding: EdgeInsets.only(left: 37.h, top: 31.v),
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
                            padding: EdgeInsets.only(left: 37.h, top: 23.v),
                            child: Text("Password",
                                style: theme.textTheme.headlineSmall)),
                       CustomTextFormField(
                            controller: passwordController,
                            margin: EdgeInsets.only(
                                left: 34.h, top: 8.v, right: 54.h),
                            textInputAction: TextInputAction.done,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray10001),
                        CustomElevatedButton(
                            text: "Sign up",
                            margin: EdgeInsets.only(
                                left: 33.h, top: 46.v, right: 55.h),
                            onTap: () {
                              FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text,password: passwordController.text);
                              onTapSignup(context);
                              
                            }),
                        GestureDetector(
                            onTap: () {
                              //log('bhaskar');
                              // sign_up_screen();
                              
                              onTapTxtConfirmation(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 37.h, top: 44.v, bottom: 5.v),
                                child: Text("Already have a account? Login ",
                                    style: theme.textTheme.titleSmall)))
                      ])),
            )));
  }
  void sign_up_screen()async{
    String username=nameController.text;
    String email=emailController.text;
    String password=passwordController.text;

    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  }
   
  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapTxtConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
