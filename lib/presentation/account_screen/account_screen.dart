import 'package:e_farm/core/app_export.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 31.v),
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 102.h, vertical: 13.v),
                      decoration: AppDecoration.fillPrimary,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.img309035useracc,
                                height: 39.v,
                                width: 36.h,
                                margin: EdgeInsets.only(bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 8.v, bottom: 11.v),
                                child: Text("Account ",
                                    style: CustomTextStyles.bodyLargeOnPrimary))
                          ])),
                  GestureDetector(
                      onTap: () {
                        onTapRowprofileiconp(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 42.h, top: 117.v, right: 42.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 5.v),
                          decoration: AppDecoration.outlineGray,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfileiconpng916,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 9.v, bottom: 11.v),
                                    child: Text("Profile ",
                                        style: CustomTextStyles
                                            .headlineSmallRoboto))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowsettingsicon(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 42.h, top: 24.v, right: 42.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 5.v),
                          decoration: AppDecoration.outlineGray,
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettingsicon14976,
                                height: 50.adaptSize,
                                width: 50.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 30.h, top: 12.v, bottom: 8.v),
                                child: Text("Settings",
                                    style:
                                        CustomTextStyles.headlineSmallRoboto))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRow100193helpic(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 42.h, top: 20.v, right: 42.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 5.v),
                          decoration: AppDecoration.outlineGray,
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.img100193helpicon,
                                height: 50.adaptSize,
                                width: 50.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 32.h, top: 11.v, bottom: 9.v),
                                child: Text("Help",
                                    style:
                                        CustomTextStyles.headlineSmallRoboto))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRow5172972arrow(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 42.h, top: 24.v, right: 42.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 3.v),
                          decoration: AppDecoration.outlineGray,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.img5172972arrowe,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    margin: EdgeInsets.only(top: 4.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.h, top: 14.v, bottom: 10.v),
                                    child: Text("Log out",
                                        style: CustomTextStyles
                                            .headlineSmallRoboto))
                              ]))),
                  Spacer(),
                  Divider(),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(50.h, 2.v, 82.h, 23.v),
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

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileScreen.
  onTapRowprofileiconp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the settingsScreen.
  onTapRowsettingsicon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the helpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the helpScreen.
  onTapRow100193helpic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helpScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapRow5172972arrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
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
