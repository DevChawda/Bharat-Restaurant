import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LandOneScreen extends StatelessWidget {
  const LandOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                leadingWidth: 60.h,
                leading: GestureDetector(
                    onTap: () {
                      onTapStackarrowsix(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 12.h, top: 18.v, bottom: 18.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 13.v),
                        decoration: AppDecoration.fillPrimary,
                        child: AppbarImage1(
                            svgPath: ImageConstant.imgArrow6,
                            margin: EdgeInsets.only(left: 2.h, top: 3.v)))),
                title: AppbarSubtitle4(
                    text: "Land ", margin: EdgeInsets.only(left: 87.h)),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 43.h, right: 40.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle86122x125,
                                height: 183.v,
                                width: 130.h,
                                radius: BorderRadius.circular(30.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle872,
                                height: 183.v,
                                width: 132.h,
                                radius: BorderRadius.circular(30.h),
                                margin: EdgeInsets.only(left: 15.h))
                          ])),
                  Container(
                      margin:
                          EdgeInsets.only(left: 27.h, top: 26.v, right: 33.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.fillOnPrimary,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 26.v),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle81,
                                          height: 28.v,
                                          width: 50.h),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse9,
                                          height: 17.adaptSize,
                                          width: 17.adaptSize,
                                          radius: BorderRadius.circular(8.h),
                                          margin: EdgeInsets.only(
                                              top: 13.v, right: 13.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse923x23,
                                          height: 23.adaptSize,
                                          width: 23.adaptSize,
                                          radius: BorderRadius.circular(11.h),
                                          margin: EdgeInsets.only(
                                              top: 11.v, right: 10.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse926x32,
                                          height: 26.v,
                                          width: 32.h,
                                          radius: BorderRadius.circular(16.h),
                                          margin: EdgeInsets.only(
                                              top: 11.v, right: 5.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse920x20,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 11.v, right: 12.h))
                                    ])),
                            Expanded(
                                child: Container(
                                    width: 201.h,
                                    margin: EdgeInsets.only(
                                        left: 11.h, right: 4.h, bottom: 22.v),
                                    child: Text(
                                        "                 :- Land \n\n                :- 1 hectare land with water .\n\n                :- Rajkot\n\n                :- 1234567890\n\n                :- 35,00,000 /-",
                                        maxLines: 9,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)))
                          ])),
                  Spacer(),
                  Divider(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(65.h, 9.v, 73.h, 23.v),
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

  /// Navigates to the landScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the landScreen.
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.landScreen);
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
