import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_leading_image.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_title_searchview.dart';
import 'package:bacakomik_v3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class PageSemuaChapterScreen extends StatelessWidget {
  PageSemuaChapterScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                    height: 38.v,
                    width: 90.h,
                    text: "Sort By:",
                    margin: EdgeInsets.only(left: 2.h),
                    buttonTextStyle: theme.textTheme.bodyMedium!,
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.symmetric(horizontal: 39.h),
                    decoration: AppDecoration.outlinePrimary3,
                    child: Column(
                      children: [
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 89",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 88",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 87",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 86",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 85",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 84",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 83",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 82",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 81",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 80",
                        ),
                        SizedBox(height: 17.v),
                        _buildSpacer(
                          context,
                          chapterCounter: "Chapter 79",
                        ),
                      ],
                    ),
                  ),
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
        imagePath: ImageConstant.imgGroup138,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 27.v,
          bottom: 27.v,
        ),
      ),
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 17.h),
        hintText: "Search",
        controller: searchController,
      ),
    );
  }

  /// Common widget
  Widget _buildSpacer(
    BuildContext context, {
    required String chapterCounter,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3040x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(left: 4.h),
          ),
          const Spacer(
            flex: 43,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 12.v,
            ),
            child: Text(
              chapterCounter,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          const Spacer(
            flex: 56,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
        ],
      ),
    );
  }
}
