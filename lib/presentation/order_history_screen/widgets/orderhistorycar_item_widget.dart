import 'package:bharat_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderhistorycarItemWidget extends StatelessWidget {
  const OrderhistorycarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 108.v,
            width: 104.h,
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(12.h),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              right: 14.h,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Drinks",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 34.v),
                Row(
                  children: [
                    Text(
                      "Cancelled",
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTimessvgrepocom,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    Text(
                      "85/-",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
