import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SellReqScreen extends StatelessWidget {
  const SellReqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Column(children: [
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
                  SizedBox(height: 130.v),
                  SizedBox(
                      width: 199.h,
                      child: Text(
                          "The post will take about 6 hours for approval ... Admin will accept or reject your post if they find it suitable. ",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 67.v),
                  CustomElevatedButton(
                      width: 91.h,
                      text: "  OK",
                      buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                      onTap: () {
                        onTapOk(context);
                      }),
                  Spacer(),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("      Upload",
                          style: theme.textTheme.headlineLarge))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreen.
  onTapOk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
