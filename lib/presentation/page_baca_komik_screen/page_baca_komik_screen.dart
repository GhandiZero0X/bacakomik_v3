import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_leading_image.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_subtitle.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

class PageBacaKomikScreen extends StatelessWidget {
  const PageBacaKomikScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.v),
            child: SizedBox(
              height: 1133.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1547x414,
                          width: 414.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2547x414,
                          width: 414.h,
                        ),
                      ],
                    ),
                  ),
                  _buildTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 28.v,
          bottom: 26.v,
        ),
      ),
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitleCircleimage(
            imagePath: ImageConstant.imgRectangle3040x40,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 1.v,
              bottom: 4.v,
            ),
            child: Column(
              children: [
                AppbarSubtitle(
                  text: "Kaguya-sama: Love is war",
                ),
                AppbarSubtitleTwo(
                  text: "Chapter 89",
                  margin: EdgeInsets.only(right: 146.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 1057.v),
        padding: EdgeInsets.symmetric(
          horizontal: 45.h,
          vertical: 30.v,
        ),
        decoration: AppDecoration.gradientGrayToWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrow1,
              height: 2.v,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 7.v,
                bottom: 5.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                "Chapter 88",
                style: theme.textTheme.labelLarge,
              ),
            ),
            const Spacer(),
            Text(
              "List Chapter",
              style: theme.textTheme.labelLarge,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrow2,
              height: 2.v,
              margin: EdgeInsets.only(
                left: 11.h,
                top: 7.v,
                bottom: 5.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
