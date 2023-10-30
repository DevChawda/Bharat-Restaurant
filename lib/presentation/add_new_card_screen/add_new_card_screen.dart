import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image_1.dart';
import 'package:bharat_app/widgets/app_bar/appbar_title.dart';
import 'package:bharat_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 42.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgBack1,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 17.v, bottom: 16.v),
                    onTap: () {
                      onTapBackoneone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add new card"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.all(17.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 27.v),
                      decoration: AppDecoration.fillGreenA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("8585 9696 6363 5252",
                                style: CustomTextStyles.bodyLargeWhiteA700),
                            SizedBox(height: 70.v),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 16.v),
                                      child: Text("Titanium Debit",
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700)),
                                  SizedBox(
                                      width: 65.h,
                                      child: Text("Exp. \nEnd 12/25",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700))
                                ])
                          ])),
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
                                    borderRadius: BorderRadius.circular(24.h),
                                    border: Border.all(
                                        color: appTheme.gray300, width: 1.h)))),
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
                                    borderRadius: BorderRadius.circular(24.h),
                                    border: Border.all(
                                        color: appTheme.gray300, width: 1.h)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: EdgeInsets.only(left: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.h, vertical: 1.v),
                                decoration: AppDecoration.fillWhiteA,
                                child: Text("CARD NUMBER",
                                    style: theme.textTheme.bodySmall)))
                      ])),
                  SizedBox(height: 20.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 61.v,
                            width: 193.h,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: 49.v,
                                      width: 193.h,
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
                                      child: Text(" MM/YY",
                                          style: theme.textTheme.bodySmall)))
                            ])),
                        SizedBox(
                            height: 61.v,
                            width: 193.h,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: 49.v,
                                      width: 193.h,
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
                                      child: Text("CVV",
                                          style: theme.textTheme.bodySmall)))
                            ]))
                      ]),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      text: "SAVE CARD".toUpperCase(),
                      onTap: () {
                        onTapSavecard(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentMethodScreen.
  onTapBackoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentMethodScreen.
  onTapSavecard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
