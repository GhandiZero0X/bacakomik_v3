import 'package:bacakomik_v3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  FavoritePageState createState() => FavoritePageState();
}

class FavoritePageState extends State<FavoritePage>
    with AutomaticKeepAliveClientMixin<FavoritePage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.h),
                  child: Column(
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "Search komik",
                      ),
                      SizedBox(height: 27.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 19.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Daftar Favorit",
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                  Text(
                                    "baca kembali komik favoritmu",
                                    style: CustomTextStyles.bodySmallGray50001,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12.v,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "Sort by Added",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowDown,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                radius: BorderRadius.circular(
                                  1.h,
                                ),
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 8.v,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: _buildSixtyOne(
                          context,
                          image: ImageConstant.imgRectangle27,
                          komisanCantCommunicate: "Evangelion",
                          image1: ImageConstant.imgRectangle29170x140,
                          komisanCantCommunicate1: "Kaguya-sama: Love is war",
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: _buildSixtyOne(
                          context,
                          image: ImageConstant.imgRectangle27,
                          komisanCantCommunicate: "Evangelion",
                          image1: ImageConstant.imgRectangle29170x140,
                          komisanCantCommunicate1: "Kaguya-sama: Love is war",
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: _buildSixtyOne(
                          context,
                          image: ImageConstant.imgRectangle27,
                          komisanCantCommunicate: "Evangelion",
                          image1: ImageConstant.imgRectangle29170x140,
                          komisanCantCommunicate1: "Kaguya-sama: Love is war",
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: _buildSixtyOne(
                          context,
                          image: ImageConstant.imgRectangle291,
                          komisanCantCommunicate: "Komi san Cant Communicate",
                          image1: ImageConstant.imgRectangle292,
                          komisanCantCommunicate1: "Komi san Cant Communicate",
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: _buildSixtyOne(
                          context,
                          image: ImageConstant.imgRectangle28170x140,
                          komisanCantCommunicate: "Evangelion",
                          image1: ImageConstant.imgRectangle28,
                          komisanCantCommunicate1: "Kaguya-sama: Love is war",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyOne(
    BuildContext context, {
    required String image,
    required String komisanCantCommunicate,
    required String image1,
    required String komisanCantCommunicate1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: image,
                width: 140.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 116.h,
                child: Text(
                  komisanCantCommunicate,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: appTheme.gray800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: image1,
                width: 140.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 116.h,
                child: Text(
                  komisanCantCommunicate1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: appTheme.gray800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
