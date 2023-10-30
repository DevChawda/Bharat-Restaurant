import 'package:e_farm/core/app_export.dart';
import 'package:e_farm/widgets/custom_elevated_button.dart';
import 'package:e_farm/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SellScreen extends StatelessWidget {
  SellScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController districtvalueController = TextEditingController();

  TextEditingController talukavalueoneController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 160.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 21.h,
                                                      vertical: 53.v),
                                                  decoration:
                                                      AppDecoration.fillPrimary,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        SizedBox(height: 6.v),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgArrow6,
                                                            height: 3.v,
                                                            width: 40.h)
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse1,
                                              height: 91.v,
                                              width: 103.h,
                                              radius:
                                                  BorderRadius.circular(51.h),
                                              alignment: Alignment.bottomLeft,
                                              margin:
                                                  EdgeInsets.only(left: 122.h))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 33.h, top: 6.v),
                                    child: Text("Name :-",
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                CustomTextFormField(
                                    controller: nameController,
                                    margin: EdgeInsets.only(
                                        left: 33.h, top: 7.v, right: 61.h),
                                    hintText: "name of prodct....",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 7.h)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 33.h, top: 20.v),
                                    child: Text("Details :-",
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 33.h, top: 3.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.h, vertical: 9.v),
                                    decoration: AppDecoration.fillGray10001,
                                    child: Text("Describe your Product......",
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 31.v, right: 73.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.v, bottom: 2.v),
                                          child: Text("State :-",
                                              style: CustomTextStyles
                                                  .bodyMediumLight)),
                                      Container(
                                          margin: EdgeInsets.only(left: 20.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 3.v),
                                          decoration:
                                              AppDecoration.fillGray10001,
                                          child: Text("state ...",
                                              style: CustomTextStyles
                                                  .bodyMediumLight))
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 12.v, right: 73.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.v, bottom: 2.v),
                                          child: Text("District  :-",
                                              style: CustomTextStyles
                                                  .bodyMediumLight)),
                                      Expanded(
                                          child: CustomTextFormField(
                                              controller:
                                                  districtvalueController,
                                              margin:
                                                  EdgeInsets.only(left: 4.h),
                                              hintText: "District....",
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillGray,
                                              fillColor: appTheme.gray10001))
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 16.v, right: 73.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.v, bottom: 2.v),
                                          child: Text("Taluka :-",
                                              style: CustomTextStyles
                                                  .bodyMediumLight)),
                                      Expanded(
                                          child: CustomTextFormField(
                                              controller:
                                                  talukavalueoneController,
                                              margin:
                                                  EdgeInsets.only(left: 13.h),
                                              hintText: "Taluka....",
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillGray,
                                              fillColor: appTheme.gray10001))
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 19.v, right: 73.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 5.v, bottom: 1.v),
                                          child: Text("City :-",
                                              style: CustomTextStyles
                                                  .bodyMediumLight)),
                                      Expanded(
                                          child: CustomTextFormField(
                                              controller: cityController,
                                              margin:
                                                  EdgeInsets.only(left: 30.h),
                                              hintText: "City or village.....",
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillGray,
                                              fillColor: appTheme.gray10001))
                                    ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 23.h, top: 16.v),
                                    child: Text("price :-",
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                CustomTextFormField(
                                    controller: priceController,
                                    margin: EdgeInsets.only(
                                        left: 23.h, top: 3.v, right: 61.h),
                                    hintText: "Price of product....",
                                    textInputAction: TextInputAction.done,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGray,
                                    fillColor: appTheme.gray10001),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 23.h, top: 16.v),
                                    child: Text("Products Photo:-",
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle71,
                                    height: 56.v,
                                    width: 85.h,
                                    margin: EdgeInsets.only(
                                        left: 23.h, top: 8.v, bottom: 5.v))
                              ])),
                      SizedBox(height: 39.v)
                    ]))),
            bottomNavigationBar: CustomElevatedButton(
                height: 61.v,
                text: "           Upload",
                margin: EdgeInsets.only(bottom: 39.v),
                buttonTextStyle: theme.textTheme.headlineLarge!,
                onTap: () {
                  onTapUpload(context);
                })));
  }

  /// Navigates to the sellReqScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the sellReqScreen.
  onTapUpload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellReqScreen);
  }
}
