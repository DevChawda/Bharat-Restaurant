import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSubtitle1(
                    text: "Home", margin: EdgeInsets.only(left: 28.h)),
                actions: [
                  AppbarImage(
                      imagePath: ImageConstant.imgRectangle78,
                      margin: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 11.v))
                ],
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 49.v),
                child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 8.h, top: 14.v, right: 15.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle48,
                                    height: 140.v,
                                    width: 146.h,
                                    radius: BorderRadius.circular(30.h),
                                    margin: EdgeInsets.only(right: 22.h),
                                    onTap: () {
                                      onTapImgImageone(context);
                                    })),
                            Expanded(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle49,
                                    height: 140.v,
                                    width: 146.h,
                                    radius: BorderRadius.circular(30.h),
                                    margin: EdgeInsets.only(left: 22.h),
                                    onTap: () {
                                      onTapImgImagetwo(context);
                                    }))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 33.h, top: 18.v, right: 58.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("Machinary",
                                        style: theme.textTheme.titleLarge)),
                                Text("Tractor",
                                    style: theme.textTheme.titleLarge)
                              ]))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 8.h, top: 19.v, right: 18.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle51,
                                    height: 140.v,
                                    width: 146.h,
                                    radius: BorderRadius.circular(20.h),
                                    margin: EdgeInsets.only(right: 21.h),
                                    onTap: () {
                                      onTapImgImagethree(context);
                                    })),
                            Expanded(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle52,
                                    height: 140.v,
                                    width: 146.h,
                                    radius: BorderRadius.circular(30.h),
                                    margin: EdgeInsets.only(left: 21.h),
                                    onTap: () {
                                      onTapImgImagefour(context);
                                    }))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 62.h, top: 13.v, right: 68.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("Seeds ",
                                    style: theme.textTheme.titleLarge)),
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("Land",
                                    style: theme.textTheme.titleLarge))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle79,
                      height: 140.v,
                      width: 146.h,
                      radius: BorderRadius.circular(20.h),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 8.h, top: 3.v),
                      onTap: () {
                        onTapImgImagefive(context);
                      }),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 57.h, top: 3.v),
                          child: Text("     Sell",
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 5.v),
                  Divider(),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 65.h, top: 9.v, right: 73.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle88,
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                radius: BorderRadius.vertical(
                                    top: Radius.circular(30.h)),
                                margin: EdgeInsets.only(bottom: 2.v)),
                            CustomImageView(
                                imagePath: ImageConstant.img309035useracc,
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                onTap: () {
                                  onTapImguseracc(context);
                                })
                          ]))
                ]))));
  }

  /// Navigates to the machinaryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the machinaryScreen.
  onTapImgImageone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.machinaryScreen);
  }

  /// Navigates to the tractorScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tractorScreen.
  onTapImgImagetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tractorScreen);
  }

  /// Navigates to the seedsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the seedsScreen.
  onTapImgImagethree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seedsScreen);
  }

  /// Navigates to the landScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the landScreen.
  onTapImgImagefour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.landScreen);
  }

  /// Navigates to the sellScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the sellScreen.
  onTapImgImagefive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellScreen);
  }

  /// Navigates to the accountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the accountScreen.
  onTapImguseracc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountScreen);
  }
}
