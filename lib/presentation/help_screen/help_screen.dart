import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_1.dart';
import 'package:e_farm/widgets/app_bar/appbar_image_2.dart';
import 'package:e_farm/widgets/app_bar/appbar_title.dart';
import 'package:e_farm/widgets/app_bar/custom_app_bar.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController contactnumberController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 103.v,
                centerTitle: true,
                title: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 155.h),
                      child: Row(children: [
                        GestureDetector(
                            onTap: () {
                              onTapStackarrowsix(context);
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 5.v, bottom: 8.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 12.v),
                                decoration: AppDecoration.fillOnPrimary,
                                child: AppbarImage1(
                                    svgPath: ImageConstant.imgArrow6,
                                    margin:
                                        EdgeInsets.only(left: 2.h, top: 5.v)))),
                        AppbarImage2(
                            imagePath: ImageConstant.img100193helpicon,
                            margin: EdgeInsets.only(left: 35.h)),
                        AppbarTitle(
                            text: "Help",
                            margin: EdgeInsets.only(
                                left: 11.h, top: 9.v, bottom: 6.v))
                      ])),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: double.maxFinite, child: Divider()))
                ]),
                styleType: Style.bgFill_1),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 36.v),
                    child: Column(children: [
                      CustomTextFormField(
                          controller: userNameController,
                          margin: EdgeInsets.only(left: 14.h, right: 15.h),
                          hintText: "User name",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 15.v)),
                      CustomTextFormField(
                          controller: contactnumberController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 31.v, right: 15.h),
                          hintText: "Contact No",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 15.v)),
                      CustomTextFormField(
                          controller: messageController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 31.v, right: 15.h),
                          hintText: "Message ",
                          textInputAction: TextInputAction.done,
                          maxLines: 6,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 16.v)),
                      SizedBox(height: 66.v),
                      CustomElevatedButton(
                          height: 36.v,
                          width: 147.h,
                          text: "Submit",
                          buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                          buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
                          onTap: () {
                            onTapSubmit(context);
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 86.h, top: 29.v),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPngwing3,
                                        height: 35.v,
                                        width: 32.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 17.h, bottom: 9.v),
                                        child: Text("12345678890",
                                            style: CustomTextStyles
                                                .titleLargeLight))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 80.h, top: 2.v),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPngwing4,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.h, top: 14.v, bottom: 6.v),
                                    child: Text("Ok@gmail.com",
                                        style:
                                            CustomTextStyles.titleLargeLight))
                              ]))),
                      SizedBox(height: 33.v),
                      Divider(),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(50.h, 2.v, 82.h, 5.v),
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
                                        margin: EdgeInsets.only(top: 3.v),
                                        onTap: () {
                                          onTapImgImage(context);
                                        }),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img309035useracc,
                                        height: 45.v,
                                        width: 41.h,
                                        margin: EdgeInsets.only(bottom: 3.v))
                                  ])))
                    ])))));
  }

  /// Navigates to the accountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the accountScreen.
  onTapStackarrowsix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
