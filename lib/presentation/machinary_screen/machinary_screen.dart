import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MachinaryScreen extends StatelessWidget {
  const MachinaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSubtitle3(
                    text: "Machinary", margin: EdgeInsets.only(left: 37.h)),
                actions: [
                  AppbarImage(
                      imagePath: ImageConstant.imgRectangle78,
                      margin: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 11.v))
                ],
                styleType: Style.bgFill),
            body: Container(
                height: 732.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                          onTap: () {
                            onTapColumnhitenbhed(context);
                          },
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 20.v),
                              decoration:
                                  AppDecoration.gradientLightBlueToOnPrimary,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
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
                                              left: 19.h,
                                              top: 5.v,
                                              bottom: 6.v),
                                          child: Text("Hiten Bheda",
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 169.h,
                                        child: Text(
                                            "agripro power cultivator\n\n8324258385",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium)),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            18.h, 20.v, 38.h, 7.v),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle48,
                                              height: 122.v,
                                              width: 125.h,
                                              radius:
                                                  BorderRadius.circular(30.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle87122x125,
                                              height: 122.v,
                                              width: 125.h,
                                              radius:
                                                  BorderRadius.circular(30.h),
                                              margin:
                                                  EdgeInsets.only(left: 20.h))
                                        ]))
                                  ])))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 10.h, right: 6.h, bottom: 85.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 65.v),
                          decoration:
                              AppDecoration.gradientLightblue900ToOnPrimary,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                                          left: 19.h, top: 5.v, bottom: 6.v),
                                      child: Text("Bhaskar Pandav",
                                          style: theme.textTheme.titleLarge))
                                ]),
                                SizedBox(height: 16.v),
                                SizedBox(
                                    width: 191.h,
                                    child: Text(
                                        "Mounted stubble cultivator\n\n8138131388",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 59.v)
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle90122x125,
                      height: 122.v,
                      width: 125.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 37.h, bottom: 67.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle91122x125,
                      height: 122.v,
                      width: 125.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 53.h, bottom: 67.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle88,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      radius: BorderRadius.vertical(top: Radius.circular(30.h)),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 65.h, bottom: 26.v),
                      onTap: () {
                        onTapImgImagefive(context);
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.img309035useracc,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 73.h, bottom: 5.v),
                      onTap: () {
                        onTapImguseracc(context);
                      }),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 80.v),
                          child: SizedBox(
                              width: double.maxFinite, child: Divider())))
                ]))));
  }

  /// Navigates to the machinaryOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the machinaryOneScreen.
  onTapColumnhitenbhed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.machinaryOneScreen);
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
