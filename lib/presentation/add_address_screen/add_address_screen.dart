import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 57.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgBack1,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                          onTap: () {
                            onTapImgBackoneone(context);
                          }),
                      Spacer(),
                      Text("Add new address",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 20.v),
                      SizedBox(
                          height: 61.v,
                          width: 395.h,
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
                                    child: Text("TITLE",
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 20.v),
                      SizedBox(
                          height: 66.v,
                          width: 395.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 54.v,
                                    width: 395.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(27.h),
                                        border: Border.all(
                                            color: appTheme.gray300,
                                            width: 1.h)))),
                            CustomElevatedButton(
                                height: 18.v,
                                width: 98.h,
                                text: "NEW ADDRESS",
                                margin: EdgeInsets.only(left: 17.h),
                                buttonStyle: CustomButtonStyles.fillWhiteA,
                                buttonTextStyle: theme.textTheme.bodySmall!,
                                alignment: Alignment.topLeft)
                          ])),
                      SizedBox(height: 32.v),
                      Row(children: [
                        Container(
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder16),
                            child: Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(9.h)))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 7.v, bottom: 7.v),
                            child: Text("Use current location",
                                style: theme.textTheme.bodyMedium))
                      ]),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "save ".toUpperCase(),
                          onTap: () {
                            onTapSave(context);
                          }),
                      SizedBox(height: 95.v)
                    ]))));
  }

  /// Navigates to the myAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the myAddressScreen.
  onTapImgBackoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAddressScreen);
  }

  /// Navigates to the myAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the myAddressScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAddressScreen);
  }
}
