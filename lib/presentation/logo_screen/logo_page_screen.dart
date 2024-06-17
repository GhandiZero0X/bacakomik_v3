import 'dart:async';
import 'package:bacakomik_v3/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_image_view.dart';

class LogoPageScreen extends StatefulWidget {
  const LogoPageScreen({super.key});

  @override
  _LogoPageScreenState createState() => _LogoPageScreenState();
}

class _LogoPageScreenState extends State<LogoPageScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigasi ke halaman sign-in setelah 5 detik
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.loginPageScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: CustomImageView(
          imagePath: ImageConstant.imgLogoBacakomik5,
          height: 200.adaptSize,
          width: 200.adaptSize,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
