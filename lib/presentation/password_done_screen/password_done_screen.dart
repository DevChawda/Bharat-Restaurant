import 'package:bharat_app/core/app_export.dart';
import 'package:bharat_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PasswordDoneScreen extends StatelessWidget {
  const PasswordDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRotationlock1,
                          height: 200.adaptSize,
                          width: 200.adaptSize),
                      SizedBox(height: 31.v),
                      SizedBox(
                          width: 239.h,
                          child: Text("Your password has \nbeen reset!",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineMediumPrimary)),
                      SizedBox(height: 33.v),
                      CustomElevatedButton(
                          text: "DONE".toUpperCase(),
                          onTap: () {
                            onTapDone(context);
                          })
                    ]))));
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInPageScreen.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }
}
