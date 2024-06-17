import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPseudo,
            height: 66.adaptSize,
            width: 66.adaptSize,
          ),
          SizedBox(height: 5.v),
          Text(
            "Romance",
            style: CustomTextStyles.bodySmallTimesNewRomanPrimary,
          ),
        ],
      ),
    );
  }
}
