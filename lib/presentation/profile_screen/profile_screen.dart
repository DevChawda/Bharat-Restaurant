import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 40.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrow6,
                                    height: 3.v,
                                    width: 40.h,
                                    margin: EdgeInsets.only(
                                        top: 17.v, bottom: 152.v)),
                                CustomImageView(
                                    imagePath: ImageConstant.img309035useracc,
                                    height: 72.v,
                                    width: 67.h)
                              ])),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Hi, Hiten",
                              style: CustomTextStyles
                                  .headlineLargeRobotoCondensedBlack900)),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 27.v),
                          child: Text("Contact No.",
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: edittextController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 7.v, right: 15.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 29.v),
                          child: Text("User Name",
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: userNameController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 7.v, right: 15.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 31.v),
                          child: Text("Language",
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: edittextoneController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 5.v, right: 15.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 29.v),
                          child:
                              Text("E-mail", style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: emailController,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 7.v, right: 15.h),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      SizedBox(height: 12.v),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(50.h, 2.v, 82.h, 5.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    imagePath: ImageConstant.img309035useracc,
                                    height: 45.v,
                                    width: 41.h,
                                    margin: EdgeInsets.only(bottom: 3.v))
                              ]))
                    ]))));
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
