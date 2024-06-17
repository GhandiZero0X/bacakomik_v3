import 'package:flutter/material.dart';
import '../presentation/kategori_pgae_screen/kategori_pgae_screen.dart';
import '../presentation/login_page_screen/login_page_screen.dart';
import '../presentation/logo_screen/logo_page_screen.dart';
import '../presentation/page_baca_komik_screen/page_baca_komik_screen.dart';
import '../presentation/page_perkomik_screen/page_perkomik_screen.dart';
import '../presentation/page_semua_chapter_screen/page_semua_chapter_screen.dart';
import '../presentation/register_page_screen/register_page_screen.dart';
import '../presentation/home_page_container_screen/home_page_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/search_page_screen/search_page_screen.dart';
import '../presentation/filter_page_screen/filter_page_screen.dart';
import '../presentation/hasil_filter_page_screen/hasil_filter_page_screen.dart';

class AppRoutes {
  static const String logoPageScreen = '/logo_screen';
  static const String loginPageScreen = '/login_page_screen';
  static const String registerPageScreen = '/register_page_screen';
  static const String homePageContainerScreen = '/home_page_container_screen';
  static const String homePage = '/home_page';
  static const String explorePage = '/explore_page';
  static const String settingPage = '/setting_page';
  static const String favoritePage = '/favorite_page';
  static const String favoritePageTabContainerPage =
      '/favorite_page_tab_container_page';
  static const String kategoriPgaeScreen = '/kategori_pgae_screen';
  static const String pagePerkomikScreen = '/page_perkomik_screen';
  static const String pageSemuaChapterScreen = '/page_semua_chapter_screen';
  static const String pageBacaKomikScreen = '/page_baca_komik_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String searchPageScreen = '/search_page_screen';
  static const String filterPageScreen = '/filter_page_screen';
  static const String hasilFilterPageScreen = '/hasil_filter_page_screen';

  static Map<String, WidgetBuilder> routes = {
    logoPageScreen: (context) => const LogoPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    registerPageScreen: (context) => RegisterPageScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    kategoriPgaeScreen: (context) => const KategoriPgaeScreen(),
    pagePerkomikScreen: (context) => const PagePerkomikScreen(),
    pageSemuaChapterScreen: (context) => PageSemuaChapterScreen(),
    pageBacaKomikScreen: (context) => const PageBacaKomikScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    searchPageScreen: (context) => SearchPageScreen(),
    filterPageScreen: (context) => FilterPageScreen(),
    hasilFilterPageScreen: (context) => HasilFilterPageScreen(),
  };
}


