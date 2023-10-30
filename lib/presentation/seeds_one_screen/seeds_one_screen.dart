import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SeedsOneScreen extends StatelessWidget {
  const SeedsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                leadingWidth: 67.h,
                leading: GestureDetector(
                    onTap: () {
                      onTapStackarrowseven(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 19.h, top: 15.v, bottom: 21.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 12.v),
                        decoration: AppDecoration.fillPrimary,
                        child: AppbarImage1(
                            svgPath: ImageConstant.imgArrow6,
                            margin: EdgeInsets.only(left: 2.h, top: 5.v)))),
                centerTitle: true,
                title: AppbarSubtitle4(text: "Seeds"),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 50.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 45.h, right: 28.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle86203x135,
                                    height: 203.v,
                                    width: 135.h,
                                    radius: BorderRadius.circular(30.h)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle871,
                                    height: 203.v,
                                    width: 142.h,
                                    radius: BorderRadius.circular(30.h),
                                    margin: EdgeInsets.only(left: 10.h))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 21.h, top: 51.v, right: 51.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 7.v),
                              decoration: AppDecoration.fillOnPrimary,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 12.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle81,
                                                  height: 28.v,
                                                  width: 50.h),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse9,
                                                  height: 17.adaptSize,
                                                  width: 17.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      8.h),
                                                  margin: EdgeInsets.only(
                                                      left: 15.h, top: 5.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse923x23,
                                                  height: 23.adaptSize,
                                                  width: 23.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      11.h),
                                                  margin: EdgeInsets.only(
                                                      left: 12.h, top: 15.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse926x32,
                                                  height: 26.v,
                                                  width: 32.h,
                                                  radius: BorderRadius.circular(
                                                      16.h),
                                                  margin: EdgeInsets.only(
                                                      left: 8.h, top: 14.v)),
                                              SizedBox(height: 15.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse920x20,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  alignment: Alignment.center)
                                            ])),
                                    Container(
                                        width: 147.h,
                                        margin: EdgeInsets.only(
                                            left: 9.h, bottom: 11.v),
                                        child: Text(
                                            "               :- vegetables Seeds\n\n                :- With great quality. \n\n                :- rajkot\n\n                 :- 1234567890\n\n                 :- 6,500 /-",
                                            maxLines: 9,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium))
                                  ]))),
                      Spacer(),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 65.h, top: 9.v, right: 73.h),
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

  /// Navigates to the seedsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the seedsScreen.
  onTapStackarrowseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seedsScreen);
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
