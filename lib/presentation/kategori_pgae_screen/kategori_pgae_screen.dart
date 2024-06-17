import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_leading_image.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_title.dart';
import 'widgets/kategoripgae_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

class KategoriPgaeScreen extends StatelessWidget {
  const KategoriPgaeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 22.h,
            top: 2.v,
            right: 22.h,
          ),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return const KategoripgaeItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 28.v,
          bottom: 25.v,
        ),
      ),
      title: AppbarTitle(
        text: "Komik Terbaru",
        margin: EdgeInsets.only(left: 17.h),
      ),
    );
  }
}
