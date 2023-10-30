import 'package:bharat_app/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UseraddressItemWidget extends StatelessWidget {
  const UseraddressItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: appTheme.gray300,
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      dashPattern: [
        2,
        2,
      ],
      child: Container(
        decoration: AppDecoration.outlineGray300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: 14.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgHome,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 24.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Sec 16, Near Metro station,201301",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.v),
          ],
        ),
      ),
    );
  }
}
