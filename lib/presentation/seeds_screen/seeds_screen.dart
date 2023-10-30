import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_circleimage.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  const SeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 11.v),
                            decoration: AppDecoration.fillPrimary,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 15.h, top: 9.v, bottom: 7.v),
                                      child: Text("Seeds",
                                          style: CustomTextStyles
                                              .headlineSmallRobotoOnPrimaryExtraBold)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle78,
                                      height: 46.v,
                                      width: 55.h)
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapColumnbrijeshma(context);
                            },
                            child: Container(
                                width: 344.h,
                                margin:
                                    EdgeInsets.fromLTRB(8.h, 27.v, 8.h, 2.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 20.v),
                                decoration:
                                    AppDecoration.gradientLightBlueToOnPrimary,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle4836x44,
                                            height: 36.v,
                                            width: 44.h,
                                            radius:
                                                BorderRadius.circular(18.h)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 19.h,
                                                top: 7.v,
                                                bottom: 4.v),
                                            child: Text("Brijesh Manvar ",
                                                style:
                                                    theme.textTheme.titleLarge))
                                      ]),
                                      SizedBox(height: 17.v),
                                      SizedBox(
                                          width: 95.h,
                                          child: Text(
                                              "Cotton seeds \n\n8138131371",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              18.h, 20.v, 38.h, 7.v),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle86,
                                                height: 122.v,
                                                width: 125.h,
                                                radius: BorderRadius.circular(
                                                    30.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle871,
                                                height: 122.v,
                                                width: 125.h,
                                                radius:
                                                    BorderRadius.circular(30.h),
                                                margin:
                                                    EdgeInsets.only(left: 20.h))
                                          ]))
                                    ])))
                      ]),
                  SizedBox(
                      height: 301.v,
                      width: 344.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapColumnbhaskarpa(context);
                                },
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 62.v),
                                    decoration: AppDecoration
                                        .gradientLightblue900ToOnPrimary,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: 36.v,
                                              leadingWidth: 63.h,
                                              leading: AppbarCircleimage(
                                                  imagePath: ImageConstant
                                                      .imgRectangle4836x44,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h)),
                                              title: AppbarSubtitle2(
                                                  text: "Bhaskar Pandav",
                                                  margin: EdgeInsets.only(
                                                      left: 19.h))),
                                          Container(
                                              width: 122.h,
                                              margin: EdgeInsets.only(
                                                  left: 11.h,
                                                  top: 17.v,
                                                  bottom: 65.v),
                                              child: Text(
                                                  "Groundnut seeds\n\n8138131371",
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ])))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle901,
                            height: 122.v,
                            width: 125.h,
                            radius: BorderRadius.circular(30.h),
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 27.h)),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle911,
                            height: 122.v,
                            width: 125.h,
                            radius: BorderRadius.circular(30.h),
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 47.h, bottom: 3.v))
                      ])),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Column(children: [
                        Divider(),
                        Padding(
                            padding: EdgeInsets.fromLTRB(65.h, 3.v, 73.h, 5.v),
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
                      ]))
                ]))));
  }

  /// Navigates to the seedsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the seedsOneScreen.
  onTapColumnbrijeshma(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seedsOneScreen);
  }

  /// Navigates to the seedsTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the seedsTwoScreen.
  onTapColumnbhaskarpa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seedsTwoScreen);
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
