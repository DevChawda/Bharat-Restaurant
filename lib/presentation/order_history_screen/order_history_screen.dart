import '../order_history_screen/widgets/orderhistorycar_item_widget.dart';
import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image_1.dart';
import 'package:bharat_app/widgets/app_bar/appbar_title.dart';
import 'package:bharat_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bharat_app/widgets/custom_checkbox_button.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrderHistoryScreen extends StatelessWidget {
  OrderHistoryScreen({Key? key}) : super(key: key);

  bool delivered = false;

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
                        EdgeInsets.only(left: 20.h, top: 16.v, bottom: 17.v),
                    onTap: () {
                      onTapBackoneone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Order History"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(17.h, 16.v, 17.h, 18.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v),
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(right: 1.h),
                      decoration: AppDecoration.shadow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 108.v,
                                width: 104.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray100,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(12.h)))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 16.v, right: 14.h, bottom: 16.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Gujarati thali",
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 32.v),
                                      Row(children: [
                                        CustomCheckboxButton(
                                            width: 90.h,
                                            text: "Delivered",
                                            value: delivered,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 3.v),
                                            isRightCheck: true,
                                            onChange: (value) {
                                              delivered = value;
                                            }),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 3.v),
                                            child: Text("100/-",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ]))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 26.v, right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Momos x 1       ",
                                style: theme.textTheme.bodyMedium),
                            Text("5/-", style: theme.textTheme.bodyMedium)
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 14.v, right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Chicken x 1",
                                style: theme.textTheme.bodyMedium),
                            Text("10/-", style: theme.textTheme.bodyMedium)
                          ])),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                      text: "repeat order".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimary),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 32.v, right: 1.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 16.v);
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return OrderhistorycarItemWidget();
                              })))
                ]))));
  }

  /// Navigates to the profileContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileContainerScreen.
  onTapBackoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileContainerScreen);
  }
}
