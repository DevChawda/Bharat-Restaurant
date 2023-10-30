import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_circleimage.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LandScreen extends StatelessWidget {
  const LandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Column(children: [
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 13.h, vertical: 11.v),
                        decoration: AppDecoration.fillPrimary,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.h, top: 9.v, bottom: 7.v),
                                  child: Text("Land",
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
                            margin: EdgeInsets.fromLTRB(8.h, 27.v, 8.h, 8.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 20.v),
                            decoration:
                                AppDecoration.gradientLightBlueToOnPrimary,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                      padding: EdgeInsets.fromLTRB(
                                          18.h, 20.v, 38.h, 7.v),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle86122x125,
                                            height: 122.v,
                                            width: 125.h,
                                            radius:
                                                BorderRadius.circular(30.h)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle872,
                                            height: 122.v,
                                            width: 125.h,
                                            radius: BorderRadius.circular(30.h),
                                            margin: EdgeInsets.only(left: 20.h))
                                      ]))
                                ])))
                  ]),
                  GestureDetector(
                      onTap: () {
                        onTapColumnbhaskarpa(context);
                      },
                      child: Container(
                          width: 344.h,
                          margin: EdgeInsets.only(left: 10.h, right: 6.h),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration:
                              AppDecoration.gradientLightblue900ToOnPrimary,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 55.v),
                                CustomAppBar(
                                    height: 36.v,
                                    leadingWidth: 63.h,
                                    leading: AppbarCircleimage(
                                        imagePath:
                                            ImageConstant.imgRectangle4836x44,
                                        margin: EdgeInsets.only(left: 19.h)),
                                    title: AppbarSubtitle2(
                                        text: "Bhaskar Pandav",
                                        margin: EdgeInsets.only(left: 19.h))),
                                Container(
                                    width: 131.h,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 16.v),
                                    child: Text(
                                        "john deere Tractor\n\n8138131371",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 27.h, top: 10.v, right: 47.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle902,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle912,
                                          height: 122.v,
                                          width: 125.h,
                                          radius: BorderRadius.circular(30.h),
                                          margin: EdgeInsets.only(left: 20.h))
                                    ]))
                              ]))),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      child: Column(children: [
                        Divider(),
                        Padding(
                            padding: EdgeInsets.fromLTRB(65.h, 2.v, 73.h, 5.v),
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
                                      margin: EdgeInsets.only(top: 2.v),
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

  /// Navigates to the landOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the landOneScreen.
  onTapColumnbrijeshma(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.landOneScreen);
  }

  /// Navigates to the landTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the landTwoScreen.
  onTapColumnbhaskarpa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.landTwoScreen);
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
