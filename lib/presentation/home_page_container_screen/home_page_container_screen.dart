import 'package:bacakomik_v3/presentation/home_page/home_page.dart';
import 'package:bacakomik_v3/presentation/explore_page/explore_page.dart';
import 'package:bacakomik_v3/presentation/favorite_page_tab_container_page/favorite_page_tab_container_page.dart';
import 'package:bacakomik_v3/presentation/setting_page/setting_page.dart';
import 'package:bacakomik_v3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({super.key});

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: const Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Favourites:
        return AppRoutes.favoritePageTabContainerPage;
      case BottomBarEnum.Me:
        return AppRoutes.settingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.explorePage:
        return const ExplorePage();
      case AppRoutes.favoritePageTabContainerPage:
        return const FavoritePageTabContainerPage();
      case AppRoutes.settingPage:
        return SettingPage();
      default:
        return const DefaultWidget();
    }
  }
}
