import 'package:bacakomik_v3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    super.key,
    this.hintText,
    this.controller,
    this.margin,
  });

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 326.h,
        controller: controller,
        hintText: "Search",
        borderDecoration: SearchViewStyleHelper.outlinePrimaryTL15,
      ),
    );
  }
}
