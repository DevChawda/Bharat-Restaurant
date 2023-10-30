import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image_1.dart';
import 'package:bharat_app/widgets/app_bar/appbar_title.dart';
import 'package:bharat_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteItemsScreen extends StatelessWidget {
  const FavoriteItemsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "My Favorite"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(29.h, 14.v, 29.h, 20.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 20.v, right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 20.v, right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 20.v, right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 20.v, right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 20.v, right: 8.h, bottom: 5.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100.v,
                                width: 90.h,
                                decoration:
                                    BoxDecoration(color: appTheme.gray100)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 25.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Fast Food",
                                          style: theme.textTheme.bodyMedium),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text(" 5.0 -",
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMappin2,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("0.1 km",
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 12.v,
                                width: 7.h,
                                margin: EdgeInsets.symmetric(vertical: 44.v))
                          ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 24.h, bottom: 29.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          height: 65.v,
                          width: 90.h,
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h, top: 25.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Fast Food",
                                    style: theme.textTheme.bodyMedium),
                                SizedBox(height: 11.v),
                                Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgStar1,
                                      height: 5.v,
                                      width: 13.h,
                                      margin: EdgeInsets.only(top: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Text(" 5.0 -",
                                          style: theme.textTheme.bodyMedium)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgMappin2,
                                      height: 5.v,
                                      width: 12.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, top: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("0.1 km",
                                          style: theme.textTheme.bodyMedium))
                                ])
                              ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 12.v,
                          width: 7.h,
                          margin: EdgeInsets.only(top: 44.v, bottom: 9.v))
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
