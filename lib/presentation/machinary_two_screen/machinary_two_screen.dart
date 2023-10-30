import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MachinaryTwoScreen extends StatelessWidget {
  const MachinaryTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                leadingWidth: 64.h,
                leading: GestureDetector(
                    onTap: () {
                      onTapStackarrowsix(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 16.h, top: 17.v, bottom: 19.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 12.v),
                        decoration: AppDecoration.fillPrimary,
                        child: AppbarImage1(
                            svgPath: ImageConstant.imgArrow6,
                            margin: EdgeInsets.only(left: 2.h, top: 5.v)))),
                centerTitle: true,
                title: AppbarSubtitle4(text: "Machinary "),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 51.v),
                child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 41.h, top: 7.v, right: 34.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle90122x125,
                                height: 180.v,
                                width: 129.h,
                                radius: BorderRadius.circular(30.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle91122x125,
                                height: 180.v,
                                width: 144.h,
                                radius: BorderRadius.circular(30.h),
                                margin: EdgeInsets.only(left: 12.h))
                          ])),
                  SizedBox(height: 42.v),
                  SizedBox(
                      height: 227.v,
                      width: 302.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 226.v,
                                width: 302.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 219.v,
                                width: 278.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 278.h,
                                              child: Text(
                                                  "               :  Power Cultivator\n\n               : Power Tillers are rotary tillers                                               fitted with two wheels to give smooth resistance during all aspects of farming.\n\n                : Rajkot\n\n                : 1234567890\n\n                : 35,000 /-",
                                                  maxLines: 12,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle81,
                                                        height: 28.v,
                                                        width: 50.h),
                                                    SizedBox(height: 9.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse9,
                                                        height: 17.adaptSize,
                                                        width: 17.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(8.h)),
                                                    SizedBox(height: 74.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse923x23,
                                                        height: 23.adaptSize,
                                                        width: 23.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(11.h)),
                                                    SizedBox(height: 9.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse926x32,
                                                        height: 26.v,
                                                        width: 32.h,
                                                        radius: BorderRadius
                                                            .circular(16.h)),
                                                    SizedBox(height: 7.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse920x20,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize)
                                                  ])))
                                    ])))
                      ])),
                  Spacer(),
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
                                margin: EdgeInsets.only(bottom: 2.v),
                                onTap: () {
                                  onTapImgImagefour(context);
                                }),
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
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.machinaryScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapImgImagefour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
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
