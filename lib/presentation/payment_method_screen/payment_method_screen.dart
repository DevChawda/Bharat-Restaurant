import '../payment_method_screen/widgets/paycard_item_widget.dart';
import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image_1.dart';
import 'package:bharat_app/widgets/app_bar/appbar_title.dart';
import 'package:bharat_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "Payment Method"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(18.h, 16.v, 18.h, 18.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 26.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Credit Cards",
                                style: theme.textTheme.titleMedium),
                            CustomElevatedButton(
                                height: 19.v,
                                width: 47.h,
                                text: "Add",
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgPlus1)),
                                buttonStyle: CustomButtonStyles.none,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumPrimary,
                                onTap: () {
                                  onTapAdd(context);
                                })
                          ])),
                  SizedBox(height: 30.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(left: 16.h),
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 28.v, bottom: 44.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("9897 6565 3232 3232",
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA700),
                                            SizedBox(height: 70.v),
                                            Text("Titanium Debit",
                                                style: CustomTextStyles
                                                    .bodyMediumWhiteA700)
                                          ])),
                                  Spacer(),
                                  Container(
                                      width: 65.h,
                                      margin: EdgeInsets.only(
                                          top: 118.v, bottom: 27.v),
                                      child: Text("Exp. \nEnd 12/25",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700)),
                                  Container(
                                      height: 180.v,
                                      width: 329.h,
                                      margin: EdgeInsets.only(left: 24.h),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 180.v,
                                                    width: 329.h,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .lightBlue400,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.h)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                    width: 65.h,
                                                    margin: EdgeInsets.only(
                                                        right: 16.h,
                                                        bottom: 29.v),
                                                    child: Text(
                                                        "Exp. \nEnd 12/25",
                                                        maxLines: null,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .bodyMediumWhiteA700)))
                                          ]))
                                ])))),
                    Container(
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(vertical: 28.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("3636 2525 1414 4747",
                                  style: CustomTextStyles.bodyLargeWhiteA700),
                              SizedBox(height: 70.v),
                              Text("Kristin Watson",
                                  style: CustomTextStyles.bodyMediumWhiteA700),
                              SizedBox(height: 15.v)
                            ]))
                  ]),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 32.v, right: 1.h),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 24.v);
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return PaycardItemWidget();
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

  /// Navigates to the addNewCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addNewCardScreen.
  onTapAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewCardScreen);
  }
}
