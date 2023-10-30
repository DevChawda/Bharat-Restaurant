import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TractorScreen extends StatelessWidget {
  const TractorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSubtitle(
                    text: "Tractor", margin: EdgeInsets.only(left: 35.h)),
                actions: [
                  AppbarImage(
                      imagePath: ImageConstant.imgRectangle78,
                      margin: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 11.v))
                ],
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapColumnbrijeshma(context);
                      },
                      child: Container(
                          width: 339.h,
                          margin: EdgeInsets.only(left: 8.h, right: 13.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 15.v),
                          decoration:
                              AppDecoration.gradientLightBlueToOnPrimary,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5.v),
                                Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle4836x44,
                                      height: 36.v,
                                      width: 44.h,
                                      radius: BorderRadius.circular(18.h)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 19.h, top: 7.v, bottom: 4.v),
                                      child: Text("Brijesh Manvar ",
                                          style: theme.textTheme.titleLarge))
                                ]),
                                SizedBox(height: 16.v),
                                SizedBox(
                                    width: 131.h,
                                    child: Text(
                                        "john deere Tractor\n\n8138131371",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 18.h, top: 20.v, right: 33.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle49,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle87,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h),
                                          margin: EdgeInsets.only(left: 20.h))
                                    ]))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapColumnbhaskarpa(context);
                      },
                      child: Container(
                          width: 337.h,
                          margin: EdgeInsets.only(
                              left: 8.h, top: 11.v, right: 13.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 11.v),
                          decoration:
                              AppDecoration.gradientLightblue900ToOnPrimary,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 21.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle4836x44,
                                          height: 36.v,
                                          width: 44.h,
                                          radius: BorderRadius.circular(18.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h,
                                              top: 4.v,
                                              bottom: 7.v),
                                          child: Text("Bhaskar Pandav",
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]),
                                SizedBox(height: 10.v),
                                SizedBox(
                                    width: 163.h,
                                    child: Text(
                                        "Mahindra Novo Tractor\n\n9883739272",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 18.h, top: 32.v, right: 31.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle90,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle91,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h),
                                          margin: EdgeInsets.only(left: 20.h))
                                    ]))
                              ]))),
                  SizedBox(height: 2.v),
                  Divider(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(65.h, 9.v, 73.h, 5.v),
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
                                  onTapImgImagefive(context);
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

  /// Navigates to the tractorOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tractorOneScreen.
  onTapColumnbrijeshma(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tractorOneScreen);
  }

  /// Navigates to the tractorTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tractorTwoScreen.
  onTapColumnbhaskarpa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tractorTwoScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapImgImagefive(BuildContext context) {
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
