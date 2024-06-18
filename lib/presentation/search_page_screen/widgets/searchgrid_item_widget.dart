import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SearchgridItemWidget extends StatelessWidget {
  const SearchgridItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.h),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle27,
              height: 170.v,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
            child: Text(
              "Evangelion",
              style: CustomTextStyles.bodyLarge16,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
