import 'widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: _buildList(context),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(56.0), // Tinggi AppBar yang diinginkan
      child: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan tombol back
        title: Text(
          "Explore Genres",
          style: CustomTextStyles.titleLargeBold,
        ),
        backgroundColor: Colors.white, // Sesuaikan warna latar belakang AppBar
        elevation: 0, // Hilangkan shadow di bawah AppBar jika tidak diperlukan
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.v),
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
    );
  }
}
