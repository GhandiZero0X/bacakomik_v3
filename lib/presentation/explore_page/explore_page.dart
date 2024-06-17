import 'widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Favorite Genres",
                  style: CustomTextStyles.titleLargeGray80001,
                ),
              ),
              SizedBox(height: 9.v),
              _buildList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 3.h,
          right: 2.h,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 91.v,
            crossAxisCount: 4,
            mainAxisSpacing: 32.h,
            crossAxisSpacing: 32.h,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 16,
          itemBuilder: (context, index) {
            return const ListItemWidget();
          },
        ),
      ),
    );
  }
}
