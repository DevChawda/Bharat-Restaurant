import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_2.dart';
import 'package:e_farm/widgets/app_bar/appbar_title.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 103.v,
                centerTitle: true,
                title: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 6.h, right: 136.h),
                      child: Row(children: [
                        GestureDetector(
                            onTap: () {
                              onTapStackarrowsix(context);
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 5.v, bottom: 8.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 12.v),
                                decoration: AppDecoration.fillOnPrimary,
                                child: AppbarImage1(
                                    svgPath: ImageConstant.imgArrow6,
                                    margin:
                                        EdgeInsets.only(left: 2.h, top: 5.v)))),
                        AppbarImage2(
                            imagePath: ImageConstant.imgSettingsicon14976,
                            margin: EdgeInsets.only(left: 31.h)),
                        AppbarTitle(
                            text: "Settings",
                            margin: EdgeInsets.only(
                                left: 6.h, top: 10.v, bottom: 5.v))
                      ])),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: double.maxFinite, child: Divider()))
                ]),
                styleType: Style.bgFill_1),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 54.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomElevatedButton(
                      height: 63.v,
                      text: "Manage Profile",
                      margin:
                          EdgeInsets.only(left: 29.h, top: 132.v, right: 30.h),
                      onTap: () {
                        onTapManageprofile(context);
                      },
                      isDisabled: true),
                  CustomElevatedButton(
                      height: 63.v,
                      text: "Change Password",
                      margin:
                          EdgeInsets.only(left: 29.h, top: 41.v, right: 29.h),
                      onTap: () {
                        onTapChangepassword(context);
                      },
                      isDisabled: true),
                  Spacer(),
                  Divider(),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 50.h, top: 2.v, right: 82.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    imagePath: ImageConstant.img309035useracc,
                                    height: 45.v,
                                    width: 41.h,
                                    margin: EdgeInsets.only(bottom: 3.v))
                              ])))
                ]))));
  }

  /// Navigates to the accountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the accountScreen.
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileScreen.
  onTapManageprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the changepassScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the changepassScreen.
  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changepassScreen);
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
