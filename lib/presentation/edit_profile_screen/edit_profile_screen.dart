import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_drop_down.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:bharat_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 100.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBack1,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                onTap: () {
                                  onTapImgBackoneone(context);
                                }),
                            Text("Edit Profile",
                                style: CustomTextStyles.titleMedium18)
                          ])),
                      SizedBox(height: 47.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 103.v,
                              width: 100.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 100.adaptSize,
                                            width: 100.adaptSize,
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50.h)))),
                                    CustomIconButton(
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(right: 6.h),
                                        padding: EdgeInsets.all(7.h),
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgEditsvgrepocomWhiteA700))
                                  ]))),
                      Container(
                          height: 61.v,
                          width: 395.h,
                          margin: EdgeInsets.only(left: 1.h, top: 50.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 49.v,
                                    width: 395.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24.h),
                                        border: Border.all(
                                            color: appTheme.gray300,
                                            width: 1.h)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: EdgeInsets.only(left: 17.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.h, vertical: 1.v),
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Text("NAME",
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      Container(
                          height: 61.v,
                          width: 395.h,
                          margin: EdgeInsets.only(left: 1.h, top: 20.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 49.v,
                                    width: 395.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24.h),
                                        border: Border.all(
                                            color: appTheme.gray300,
                                            width: 1.h)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: EdgeInsets.only(left: 17.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.h, vertical: 1.v),
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Text("EMAIL",
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      Container(
                          height: 61.v,
                          width: 395.h,
                          margin: EdgeInsets.only(left: 1.h, top: 20.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 49.v,
                                    width: 395.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24.h),
                                        border: Border.all(
                                            color: appTheme.gray300,
                                            width: 1.h)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: EdgeInsets.only(left: 17.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.h, vertical: 1.v),
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Text("PHONE NUMBER",
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      CustomDropDown(
                          icon: Container(
                              padding:
                                  EdgeInsets.fromLTRB(30.h, 20.v, 24.h, 20.v),
                              margin: EdgeInsets.only(),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.h),
                                  border: Border.all(
                                      color: appTheme.gray300, width: 1.h)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          margin: EdgeInsets.only(left: 1.h, top: 20.v),
                          hintText: "LOCATION",
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "save changes".toUpperCase(),
                          onTap: () {
                            onTapSavechanges(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the profileContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileContainerScreen.
  onTapImgBackoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the profileContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileContainerScreen.
  onTapSavechanges(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manuOneScreen);
  }
}
