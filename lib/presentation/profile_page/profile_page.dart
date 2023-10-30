import 'package:bharat_app/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Container(
                    padding:
                        EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.all(16.h),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 72.adaptSize,
                                    width: 72.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray100,
                                        borderRadius:
                                            BorderRadius.circular(36.h))),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumndevchawda(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h,
                                            top: 14.v,  
                                            bottom: 14.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Dev Chawda",
                                                  style: CustomTextStyles
                                                      .titleMedium18),
                                              SizedBox(height: 4.v),
                                              Text("dchawda237@rku.ac.in",
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ]))),
                                Spacer(), 
                                CustomImageView(
                                    svgPath: ImageConstant.imgEditsvgrepocom,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.only(
                                        top: 3.v, right: 3.h, bottom: 51.v),
                                    onTap: () {
                                      onTapImgEditsvgrepocom(context);
                                    })
                              ])),
                      SizedBox(height: 38.v),
                      Container(
                          decoration: AppDecoration.outlineGray300,
                          child: DottedBorder(  
                              color: appTheme.gray300,
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                              strokeWidth: 1.h,
                              dashPattern: [2, 2],
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 19.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgOrderhistory1,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 2.v),
                                            child: Text("Order History",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray400,
                                            height: 12.v,
                                            width: 8.h,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.v))
                                      ])))),
                      GestureDetector(
                          onTap: () {
                            onTapMenuitem(context);
                          },
                          child: Container(
                              decoration: AppDecoration.outlineGray300,
                              child: DottedBorder(
                                  color: appTheme.gray300,
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  dashPattern: [2, 2],
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 19.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPaymentmethod1,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.h, top: 2.v),
                                                child: Text("Payment Method",
                                                    style: theme.textTheme
                                                        .titleMedium)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightBlueGray400,
                                                height: 12.v,
                                                width: 8.h,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4.v))
                                          ]))))),
                      Container(
                          decoration: AppDecoration.outlineGray300,
                          child: DottedBorder(
                              color: appTheme.gray300,
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                              strokeWidth: 1.h,
                              dashPattern: [2, 2],
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 19.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgMyaddress1,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 2.v),
                                            child: Text("My Address",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray400,
                                            height: 12.v,
                                            width: 8.h,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.v))
                                      ])))),
                      GestureDetector(
                          onTap: () {
                            onTapMenuitem1(context);
                          },
                          child: Container(
                              decoration: AppDecoration.outlineGray300,
                              child: DottedBorder(
                                  color: appTheme.gray300,
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  dashPattern: [2, 2],
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 19.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFavorite,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.h, top: 2.v),
                                                child: Text("My Favorite",
                                                    style: theme.textTheme
                                                        .titleMedium)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightBlueGray400,
                                                height: 12.v,
                                                width: 8.h,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4.v))
                                          ]))))),
                      SizedBox(height: 5.v),
                      Container(
                          decoration: AppDecoration.outlineGray300,
                          child: DottedBorder(
                              color: appTheme.gray300,
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                              strokeWidth: 1.h,
                              dashPattern: [2, 2],
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 19.v),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSignout1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, top: 2.v),
                                        child: Text("Sign out",
                                            style: theme.textTheme.titleMedium))
                                  ]))))
                    ])))));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the editProfileScreen.
  onTapColumndevchawda(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the editProfileScreen.
  onTapImgEditsvgrepocom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentMethodScreen.
  onTapMenuitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }

  /// Navigates to the favoriteItemsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the favoriteItemsScreen.
  onTapMenuitem1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteItemsScreen);
  }
}
