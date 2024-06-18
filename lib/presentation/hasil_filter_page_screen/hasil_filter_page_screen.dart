import 'package:bacakomik_v3/presentation/hasil_filter_page_screen/widget/courselist_item_widget.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class HasilFilterPageScreen extends StatelessWidget {
  const HasilFilterPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildStatusSection(context),
                SizedBox(height: 16.v),
                _buildCourseList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget: AppBar
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

  /// Section Widget: Status Section
  Widget _buildStatusSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildRowDemografis(
              context,
              demografisText: "Status: All",
              temaText: "Tipe: Manhwa",
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildRowDemografis(
              context,
              demografisText: "Demografis: ",
              temaText: "Tema: ",
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Genre: Action",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget: Course List
  Widget _buildCourseList(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h, right: 28.h),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 16.v),
        itemCount: 5,
        itemBuilder: (context, index) => const CourselistItemWidget(),
      ),
    );
  }

  /// Common Widget: Row Demografis
  Widget _buildRowDemografis(BuildContext context,
      {required String demografisText, required String temaText}) {
    return Row(
      children: [
        Text(
          demografisText,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.black900),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            temaText,
            style:
                theme.textTheme.labelLarge!.copyWith(color: appTheme.black900),
          ),
        ),
      ],
    );
  }
}
