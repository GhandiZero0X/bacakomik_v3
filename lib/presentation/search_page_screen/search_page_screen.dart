import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/searchgrid_item_widget.dart';

// ignore: must_be_immutable
class SearchPageScreen extends StatelessWidget {
  SearchPageScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 12.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapColumnFilter(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 12.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h), // Sudut bulat
                      border: Border.all(color: Colors.black), // Warna border
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Filter",
                          style: CustomTextStyles.bodyLargeff000000,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                _buildSearchColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 27.v,
          bottom: 26.v,
        ),
      ),
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 19.h),
        hintText: "Search manga",
        controller: searchController,
      ),
    );
  }

  Widget _buildSearchGrid(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 280.v,
          crossAxisCount: 2,
          mainAxisSpacing: 40.h,
          crossAxisSpacing: 40.h,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const SearchgridItemWidget();
        },
      ),
    );
  }

  Widget _buildSearchColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      child: _buildSearchGrid(context),
    );
  }

  void onTapColumnFilter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterPageScreen);
  }
}
