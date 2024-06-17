import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class KategoripgaeItemWidget extends StatelessWidget {
  const KategoripgaeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 68.v,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Solo Leveling",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLockOnprimarycontainer,
                        height: 12.v,
                        margin: EdgeInsets.only(top: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Chugong",
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 75.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "Chapter 170",
                    style: CustomTextStyles.bodySmallPoppinsRed700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
