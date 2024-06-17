import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_leading_image.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bacakomik_v3/widgets/custom_icon_button.dart';
import 'package:bacakomik_v3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

class PagePerkomikScreen extends StatelessWidget {
  const PagePerkomikScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              SizedBox(height: 2.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle30,
                          height: 170.v,
                          radius: BorderRadius.circular(
                            15.h,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildFortyEight(context),
                        SizedBox(height: 31.v),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 52.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 31.h,
                            vertical: 14.v,
                          ),
                          decoration: AppDecoration.outlinePrimary2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 1.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4.5/5",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    SizedBox(height: 3.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text(
                                        "Rating",
                                        style:
                                            CustomTextStyles.bodySmallGray50001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: SizedBox(
                                  height: 52.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    indent: 11.h,
                                    endIndent: 11.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 19.h,
                                  top: 3.v,
                                  bottom: 1.v,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "265",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "Chapters",
                                      style:
                                          CustomTextStyles.bodySmallGray50001,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: SizedBox(
                                  height: 52.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    indent: 11.h,
                                    endIndent: 11.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  right: 9.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconJapan33x46,
                                      height: 33.v,
                                    ),
                                    SizedBox(height: 4.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "manga",
                                        style:
                                            CustomTextStyles.bodySmallGray50001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Container(
                          width: 300.h,
                          margin: EdgeInsets.only(
                            left: 55.h,
                            right: 58.h,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie est nec gravida dictum. Nunc dictum lectus quam, non maximus urna ornare sit amet. Aliquam id sapien in massa commodo volutpat vel vitae quam. Nunc dictum lectus quam, non maximus urna ornare sit amet. Aliquam id sapien in massa commodo volutpatc tum lectus quam, non ma.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        _buildFortySix(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBacaKomik(context),
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
          top: 27.v,
          bottom: 26.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Review",
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kaguya-sama: Love is war",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 3.v),
                Text(
                  "By rengen_ill",
                  style: CustomTextStyles.bodySmallGray50001,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.v,
            width: 44.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 40.v,
                  width: 44.h,
                  padding: EdgeInsets.all(11.h),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 40.v,
                    width: 44.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.fillIndigoA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 15.v,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 21.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Daftar Chapter",
              style: CustomTextStyles.bodyLargeWhiteA700,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 10.h,
            ),
            child: _buildSpacer(
              context,
              chapterCounter: "Chapter 89",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 10.h,
            ),
            child: _buildSpacer(
              context,
              chapterCounter: "Chapter 88",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 10.h,
            ),
            child: _buildSpacer(
              context,
              chapterCounter: "Chapter 87",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 10.h,
            ),
            child: _buildSpacer(
              context,
              chapterCounter: "Chapter 86",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 10.h,
            ),
            child: _buildSpacer(
              context,
              chapterCounter: "Chapter 85",
            ),
          ),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            width: 162.h,
            text: "Semua Chapter",
            buttonStyle: CustomButtonStyles.fillWhiteATL15,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBacaKomik(BuildContext context) {
    return CustomElevatedButton(
      height: 53.v,
      text: "Baca Komik",
      margin: EdgeInsets.only(
        left: 15.h,
        right: 15.h,
        bottom: 22.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientIndigoAToAmberDecoration,
      buttonTextStyle: CustomTextStyles.titleMediumUbuntuWhiteA700,
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
        mainAxisSize: MainAxisSize.min,
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
