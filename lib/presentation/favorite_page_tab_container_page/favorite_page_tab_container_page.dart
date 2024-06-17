import 'package:bacakomik_v3/presentation/history_page/history_page.dart';
import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_title.dart';
import 'package:bacakomik_v3/presentation/favorite_page/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoritePageTabContainerPage extends StatefulWidget {
  const FavoritePageTabContainerPage({super.key});

  @override
  FavoritePageTabContainerPageState createState() =>
      FavoritePageTabContainerPageState();
}

class FavoritePageTabContainerPageState
    extends State<FavoritePageTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 850.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      FavoritePage(),
                      HistoryPage(),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 51.v,
      title: AppbarTitle(
        text: "Favorit",
        margin: EdgeInsets.only(left: 27.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 65.v,
      width: 398.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        gradient: LinearGradient(
          begin: const Alignment(0.82, 0.87),
          end: const Alignment(-0.4, -0.34),
          colors: [
            appTheme.indigoA100,
            appTheme.amber100,
          ],
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray800,
        labelStyle: TextStyle(
          fontSize: 20.fSize,
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray800,
        unselectedLabelStyle: TextStyle(
          fontSize: 20.fSize,
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        tabs: const [
          Tab(
            child: Text(
              "Favorit",
            ),
          ),
          Tab(
            child: Text(
              "Riwayat",
            ),
          ),
        ],
      ),
    );
  }
}
