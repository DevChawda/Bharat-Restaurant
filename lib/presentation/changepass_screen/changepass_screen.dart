import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_title.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangepassScreen extends StatelessWidget {
  ChangepassScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 87.v,
                centerTitle: true,
                title: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 101.h),
                      child: Row(children: [
                        GestureDetector(
                            onTap: () {
                              onTapStackarrowsix(context);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 12.v),
                                decoration: AppDecoration.fillOnPrimary,
                                child: AppbarImage1(
                                    svgPath: ImageConstant.imgArrow6,
                                    margin:
                                        EdgeInsets.only(left: 2.h, top: 5.v)))),
                        AppbarTitle(
                            text: "Change Password",
                            margin: EdgeInsets.only(
                                left: 16.h, top: 1.v, bottom: 2.v))
                      ])),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: double.maxFinite, child: Divider()))
                ]),
                styleType: Style.bgFill_1),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(bottom: 64.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                              margin: EdgeInsets.only(left: 25.h),
                              padding: EdgeInsets.symmetric(vertical: 13.v),
                              decoration: AppDecoration.outlineGray400,
                              child: Text("Password",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: EdgeInsets.only(
                                  left: 21.h, top: 27.v, right: 48.h),
                              hintText: "Re-enter Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 13.v)),
                          CustomElevatedButton(
                              height: 48.v,
                              width: 176.h,
                              text: "Submit",
                              margin: EdgeInsets.only(left: 67.h, top: 78.v),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeOnPrimary,
                              onTap: () {
                                onTapSubmit(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 67.h, top: 38.v),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPngwing3,
                                        height: 35.v,
                                        width: 32.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 18.h, top: 4.v, bottom: 6.v),
                                        child: Text("12345678890",
                                            style: CustomTextStyles
                                                .titleLargeLight))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 62.h, top: 16.v),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPngwing4,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.h, top: 12.v, bottom: 8.v),
                                    child: Text("Ok@gmail.com",
                                        style:
                                            CustomTextStyles.titleLargeLight))
                              ])),
                          SizedBox(height: 48.v),
                          Divider(),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 50.h, top: 2.v, right: 82.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle88,
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        radius: BorderRadius.vertical(
                                            top: Radius.circular(30.h)),
                                        margin: EdgeInsets.only(top: 3.v),
                                        onTap: () {
                                          onTapImgImage(context);
                                        }),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img309035useracc,
                                        height: 45.v,
                                        width: 41.h,
                                        margin: EdgeInsets.only(bottom: 3.v))
                                  ]))
                        ])))));
  }

  /// Navigates to the accountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the accountScreen.
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountScreen);
  }

  /// Navigates to the changepassdoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the changepassdoneScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changepassdoneScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
