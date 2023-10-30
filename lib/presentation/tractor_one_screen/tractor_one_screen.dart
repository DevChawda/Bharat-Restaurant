import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TractorOneScreen extends StatelessWidget {
  const TractorOneScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle4(text: "Tractor"),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 42.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, right: 7.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle86203x148,
                                    height: 203.v,
                                    width: 148.h,
                                    radius: BorderRadius.circular(30.h)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle87203x148,
                                    height: 203.v,
                                    width: 148.h,
                                    radius: BorderRadius.circular(30.h),
                                    margin: EdgeInsets.only(left: 22.h))
                              ])),
                      Container(
                          height: 253.v,
                          width: 305.h,
                          margin: EdgeInsets.only(top: 41.v, right: 18.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.h, vertical: 4.v),
                          decoration: AppDecoration.fillOnPrimary,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    height: 237.v,
                                    width: 268.h,
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 268.h,
                                                  child: Text(
                                                      "             ::- John Deere Tractor\n\n              :- 505050HP, 2100 RPM John Deere tractor 5050 widely connects with the farmers because of the tractors unmatched power, performance and productivity.\n\n              :- Rajkot\n\n               :- 234567890\n\n                :- 45,0000 /-",
                                                      maxLines: 13,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodyMedium))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse9,
                                                            height:
                                                                17.adaptSize,
                                                            width: 17.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(8.h)),
                                                        SizedBox(height: 85.v),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse923x23,
                                                            height:
                                                                23.adaptSize,
                                                            width: 23.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(
                                                                    11.h)),
                                                        SizedBox(height: 23.v),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse926x32,
                                                            height: 26.v,
                                                            width: 32.h,
                                                            radius: BorderRadius
                                                                .circular(16.h))
                                                      ])))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle81,
                                              height: 28.v,
                                              width: 50.h),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse920x20,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 196.v, right: 12.h))
                                        ])))
                          ])),
                      SizedBox(height: 85.v),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(65.h, 9.v, 73.h, 9.v),
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
                                          onTapImgImagefour(context);
                                        }),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img309035useracc,
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        onTap: () {
                                          onTapImguseracc(context);
                                        })
                                  ])))
                    ]))));
  }

  /// Navigates to the tractorScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tractorScreen.
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tractorScreen);
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
