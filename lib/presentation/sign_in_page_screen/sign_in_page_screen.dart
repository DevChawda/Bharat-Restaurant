import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:bharat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SingInScreen extends StatelessWidget {
  SingInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController forgotpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        EdgeInsets.only(left: 11.h, top: 74.v, right: 11.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("Sign In",
                                  style: theme.textTheme.headlineMedium)),
                          CustomTextFormField(
                              controller: emailController,
                              margin: EdgeInsets.only(top: 24.v, right: 11.h),
                              hintText: "EMAIL",
                              textInputType: TextInputType.emailAddress,
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
                              controller: passwordController, 
                              margin: EdgeInsets.only(top: 20.v, right: 11.h),
                              hintText: "PASSWORD",
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
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, right: 11.h),
                                      child: Text("Forgot  password?",
                                          style: CustomTextStyles
                                              .bodyLargePrimary)))),
                          CustomElevatedButton(
                              text: "sign in".toUpperCase(),
                              margin: EdgeInsets.only(top: 30.v, right: 10.h),
                              onTap: () {
                                onTapSignin(context);
                              }),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account? ",
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "Sign up.",
                                        style:
                                            CustomTextStyles.bodyLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ])))));
  }



  /// Navigates to the forgotPasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the forgotPasswordScreen.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the manuOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the manuOneScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manuOneScreen);
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpPageScreen.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }
}
