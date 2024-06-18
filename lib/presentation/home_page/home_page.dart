import 'package:bacakomik_v3/presentation/kategori_pgae_screen/kategori_pgae_screen.dart';
import 'package:bacakomik_v3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';
import 'widgets/thirtysix_item_widget.dart';
import 'widgets/line2_item_widget.dart';
import 'widgets/homepage_item_widget.dart';
import 'widgets/thirtysix1_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            SizedBox(height: 18.v),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            right: 46.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLogoBacakomik5,
                                height: 67.v,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.h,
                                    top: 16.v,
                                    bottom: 18.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Selamat Pagi",
                                        style:
                                            CustomTextStyles.bodySmallGray50001,
                                      ),
                                      Text(
                                        "Muhamad Ghandi Nur Setiawan",
                                        style: CustomTextStyles.bodyLarge16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 29.h),
                        child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search manga",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildFortySix(context),
                      SizedBox(height: 9.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rilis Terbaru",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildThirtySix(context),
                      SizedBox(height: 17.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tipe Komik",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildLine2(context),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Komik Popular",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildEightyFour(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget Continue Reading
  Widget _buildFortySix(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: 377.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 174.v,
              width: 375.h,
              decoration: BoxDecoration(
                color: appTheme.indigoA100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 124.h),
              padding: EdgeInsets.symmetric(
                horizontal: 43.h,
                vertical: 12.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup4,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Opacity(
                opacity: 0.75,
                child: Container(
                  height: 4.v,
                  width: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700.withOpacity(0.62),
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(33.h, 65.v, 44.h, 40.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 11.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder37,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle41,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 1.v,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Evangelion",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 18.v),
                        Text(
                          "Chapter 89",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenu,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 16.v,
                      right: 8.h,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 33.h,
                top: 27.v,
              ),
              child: Text(
                "Continue Reading",
                style: CustomTextStyles.bodyLargeWhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget Rilis Terbaru
  Widget _buildThirtySix(BuildContext context) {
    return SizedBox(
      height: 203.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 18.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return const ThirtysixItemWidget();
        },
      ),
    );
  }

  /// Section Widget Tipe Komik
  Widget _buildLine2(BuildContext context) {
    return SizedBox(
      height: 92.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 27.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Line2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget Komik Populer dan Update terbaru
  Widget _buildEightyFour(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 204.v,
                crossAxisCount: 3,
                mainAxisSpacing: 18.h,
                crossAxisSpacing: 18.h,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const HomepageItemWidget();
              },
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(right: 26.h),
              child: Row(
                children: [
                  Text(
                    "Update Terbaru",
                    style: theme.textTheme.bodyLarge,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman kategori ketika tombol ditekan
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => KategoriPgaeScreen()));
                    },
                    child: Text(
                      "Semua",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenu,
                    width: 15.h,
                    radius: BorderRadius.circular(
                      1.h,
                    ),
                    margin: EdgeInsets.only(
                      left: 3.h,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          height: 203.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 18.h,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Thirtysix1ItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
