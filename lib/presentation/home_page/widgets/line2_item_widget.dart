import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class Line2ItemWidget extends StatelessWidget {
  const Line2ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 108.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgIconJapan,
            height: 42.v,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Manga",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
