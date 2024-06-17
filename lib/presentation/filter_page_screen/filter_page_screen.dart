import 'package:bacakomik_v3/presentation/filter_page_screen/widget/typefilter_item_widget.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class FilterPageScreen extends StatelessWidget {
  const FilterPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 4.v),
            padding: EdgeInsets.symmetric(horizontal: 34.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Status",
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(height: 4.v),
                _buildTypeFilter(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildFilterButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(left: 22.h, top: 28.v, bottom: 25.v),
      ),
      title: AppbarSubtitle(
        text: "Filter",
        margin: EdgeInsets.only(left: 18.h),
      ),
    );
  }

  Widget _buildTypeFilter(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(51, (index) => TypefilterItemWidget()),
      ),
    );
  }

  Widget _buildFilterButton(BuildContext context) {
    return CustomElevatedButton(
      height: 52.v,
      text: "Filter",
      margin: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 18.v),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToAmberDecoration,
      buttonTextStyle: CustomTextStyles.titleMediumUbuntuWhiteA700,
      onPressed: () {
        onTapFilterButton(context);
      },
    );
  }

  void onTapFilterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hasilFilterPageScreen);
  }
}
