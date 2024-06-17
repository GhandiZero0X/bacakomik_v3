import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

class UserprofileslistItemWidget extends StatelessWidget {
  const UserprofileslistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildUserProfile(context);
  }

  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle30,
          height: 170.v,
          width: double.maxFinite,
          radius: BorderRadius.circular(14.h),
        ),
        SizedBox(height: 10.v),
        Text(
          "Kaguya-sama: Love is war",
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 2.v),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Indonesia",
                style: theme.textTheme.bodySmall,
              ),
              Text(
                "Chapter 266",
                style: CustomTextStyles.bodySmallRed700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
