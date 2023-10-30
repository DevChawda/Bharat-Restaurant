import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:bharat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 57.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgBack1,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                              onTap: () {
                                onTapImgBackoneone(context);
                              }),
                          SizedBox(height: 45.v),
                          Text("Enter new password and confirm.",
                              style: theme.textTheme.bodyLarge),
                          CustomTextFormField(
                              controller: newpasswordController,
                              margin: EdgeInsets.only(left: 1.h, top: 21.v),
                              hintText: "NEW PASSWORD",
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
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: EdgeInsets.only(left: 1.h, top: 20.v),
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
                              text: "change password".toUpperCase(),
                              onTap: () {
                                onTapChangepassword(context);
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapImgBackoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }

  /// Navigates to the passwordDoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the passwordDoneScreen.
  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordDoneScreen);
  }
}
