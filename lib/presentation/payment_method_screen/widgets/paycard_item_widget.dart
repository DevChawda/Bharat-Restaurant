import 'package:bharat_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaycardItemWidget extends StatelessWidget {
  const PaycardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPaypallogo1,
                  height: 33.v,
                  width: 63.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 8.v,
                  ),
                  child: Text(
                    " Pay Play",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgEdit,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 20.v),
          ),
        ],
      ),
    );
  }
}
