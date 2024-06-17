import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class CourselistItemWidget extends StatelessWidget {
  const CourselistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 68.v,
            width: 74.h,
            radius: BorderRadius.circular(8.h),
            margin: EdgeInsets.only(left: 6.h),
          ),
          SizedBox(
            width: 118.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Solo Leveling",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Genre: Action",
                  style: CustomTextStyles.bodySmallOnError,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPeople,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "Chugong",
                          style: TextStyle(
                            color: appTheme.black900, // Atur warna teks di sini
                            fontSize: 12
                                .adaptSize, // Sesuaikan ukuran font jika perlu
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              "Chapter 170",
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallPoppinsRed700,
            ),
          ),
        ],
      ),
    );
  }
}
