import 'package:bacakomik_v3/widgets/app_bar/custom_app_bar.dart';
import 'package:bacakomik_v3/widgets/app_bar/appbar_subtitle.dart';
import 'package:bacakomik_v3/widgets/custom_switch.dart';
import 'package:bacakomik_v3/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  bool isSelectedSwitch = false;

  bool contactUs = false;

  bool privacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          // Bungkus dengan SingleChildScrollView
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 68.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUsem5RemovebgPreview,
                        height: 66.v,
                        radius: BorderRadius.circular(33.h),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.h, top: 14.v, bottom: 12.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Muhamad Ghandi Nur Setiawan",
                                style:
                                    CustomTextStyles.labelLargeDMSansIndigo900,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "hgrphantom01@gmail.com",
                                style:
                                    CustomTextStyles.bodySmallDMSansIndigo900,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                _buildAccountSection(context),
                SizedBox(height: 14.v),
                _buildNotificationSection(context),
                SizedBox(height: 14.v),
                _buildOtherSection(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// AppBar Section
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "Pengaturan",
        margin: EdgeInsets.only(left: 29.h),
      ),
    );
  }

  /// Account Section
  Widget _buildAccountSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 15.v),
      decoration: AppDecoration.gradientIndigoAToYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Account",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildSetting(
              context,
              search: ImageConstant.imgLockPrimary,
              settings: "Data Pribadi",
            ),
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }

  /// Notification Section
  Widget _buildNotificationSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
      decoration: AppDecoration.gradientIndigoAToYellow100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notification",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 15.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 19.v,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h, top: 2.v),
                    child: Text(
                      "Pop-up Notifikasi",
                      style: CustomTextStyles.bodySmallDMSansPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomSwitch(
            margin: EdgeInsets.only(top: 38.v),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Other Section
  Widget _buildOtherSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
      decoration: AppDecoration.gradientIndigoAToYellow1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Other",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckboxButton(
                text: "Contact Us",
                value: contactUs,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  contactUs = value;
                },
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 17.v,
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckboxButton(
                text: "Privacy Policy",
                value: privacyPolicy,
                onChange: (value) {
                  privacyPolicy = value;
                },
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 17.v,
              ),
            ],
          ),
          SizedBox(height: 9.v),
          _buildSetting(
            context,
            search: ImageConstant.imgSearch,
            settings: "Settings",
          ),
          SizedBox(height: 16.v),
          _buildLogoutButton(context), // Tambahkan tombol logout di sini
        ],
      ),
    );
  }

  /// Widget untuk menampilkan pengaturan
  Widget _buildSetting(
    BuildContext context, {
    required String search,
    required String settings,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: search,
          height: 19.v,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h, top: 3.v),
          child: Text(
            settings,
            style: CustomTextStyles.bodySmallDMSansPrimary.copyWith(
              color: theme.colorScheme.primary.withOpacity(1),
            ),
          ),
        ),
        const Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 17.v,
        ),
      ],
    );
  }

  /// Widget untuk tombol logout
  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 20.v), // Atur jarak sesuai kebutuhan
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Contoh sederhana untuk menghapus data pengguna dari Shared Preferences
            // dan menavigasi kembali ke halaman login

            // SharedPreferences prefs = await SharedPreferences.getInstance();
            // await prefs.clear();

            // Navigasi ke halaman login
            Navigator.pushReplacementNamed(context, '/loginPage');
          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Colors.white, // Warna teks hitam
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Warna latar belakang putih
            padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 20.v),
            textStyle: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
