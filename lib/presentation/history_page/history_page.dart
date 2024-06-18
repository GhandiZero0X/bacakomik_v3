import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/userprofileslist_item_widget.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage>
    with AutomaticKeepAliveClientMixin<HistoryPage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Call super.build(context) to maintain state

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "Search komik",
                      ),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                        height: 34.v,
                        width: 132.h,
                        text: "Hapus Semua",
                        margin: EdgeInsets.only(right: 6.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgThumbsup,
                            height: 18.v,
                            width: 16.h,
                          ),
                        ),
                        buttonTextStyle: theme.textTheme.bodyMedium!,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 16.v),
                      _buildMainContent(context),
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

  Widget _buildUserProfilesList(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 18.v),
        itemCount: 3,
        itemBuilder: (context, index) => const UserprofileslistItemWidget(),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserProfilesList(context),
        ],
      ),
    );
  }
}
