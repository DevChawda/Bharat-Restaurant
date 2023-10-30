import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChangepassdoneScreen extends StatelessWidget {
  const ChangepassdoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 27.v),
                  SizedBox(
                      height: 160.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 115.v,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse1,
                            height: 91.v,
                            width: 103.h,
                            radius: BorderRadius.circular(51.h),
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 122.h))
                      ])),
                  SizedBox(height: 43.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse4,
                      height: 131.v,
                      width: 167.h,
                      radius: BorderRadius.circular(83.h)),
                  SizedBox(height: 28.v),
                  SizedBox(
                      width: 211.h,
                      child: Text("your password has been changed successfully",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 47.v),
                  CustomElevatedButton(
                      width: 81.h,
                      text: "OK",
                      buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                      onTap: () {
                        onTapOk(context);
                      }),
                  Spacer(),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("      Upload",
                          style: theme.textTheme.headlineLarge))
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapOk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
