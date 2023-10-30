import '../my_address_screen/widgets/useraddress_item_widget.dart';
import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image.dart';
import 'package:bharat_app/widgets/app_bar/appbar_image_1.dart';
import 'package:bharat_app/widgets/app_bar/appbar_title.dart';
import 'package:bharat_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 20.h, top: 15.v, bottom: 18.v),
                    onTap: () {
                      onTapBackoneone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "My Address"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(17.h, 18.v, 17.h, 16.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v),
                child: Column(children: [
                  Expanded(
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 1.v);
                          },
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return UseraddressItemWidget();
                          })),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      text: "add new address".toUpperCase(),
                      onTap: () {
                        onTapAddnewaddress(context);
                      }),
                  SizedBox(height: 5.v)
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

  /// Navigates to the addAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addAddressScreen.
  onTapAddnewaddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAddressScreen);
  }
}
