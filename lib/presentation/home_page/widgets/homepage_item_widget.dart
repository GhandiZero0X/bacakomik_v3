import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  const HomepageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle27,
          width: 113.h,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          "Evangelion",
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          width: 100.h,
          child: Text(
            "From MangaLib",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50001,
          ),
        ),
      ],
    );
  }
}
