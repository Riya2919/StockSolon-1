import 'package:get/get.dart';
import 'package:main_app/presentation/main_page_news_bulletin_kindoff_screen/main_page_news_bulletin_kindoff_screen.dart';
import 'package:main_app/presentation/sideMenu/navbar.dart';

import 'controller/trending_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/trending_page/trending_page.dart';
import 'package:main_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:main_app/widgets/app_bar/appbar_title.dart';
import 'package:main_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:main_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerScreen
    extends GetWidget<TrendingTabContainerController> {
  const TrendingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Trending"),
          actions: [
            IconButton(
              icon: Icon(Icons.settings), // Add your settings icon here
              onPressed: () {
                // Handle your settings icon tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MainPageNewsBulletinKindoffScreen()),
                );
              },
            ),
          ],
        ),
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup3,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // _buildAppBar(),
                      SizedBox(height: 8.v),
                      _buildTabview(),
                      SizedBox(height: 8.v),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 75.v),
                height: 726.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //     leadingWidth: 40.h,
  //     leading: AppbarLeadingImage(
  //       onTap: () {
  //         NavBar();
  //       },
  //       imagePath: ImageConstant.imgLeftAlignment,
  //       margin: EdgeInsets.only(
  //         left: 16.h,
  //         top: 8.v,
  //         bottom: 10.v,
  //       ),
  //     ),
  //     centerTitle: true,
  //     title: AppbarTitle(
  //       text: "lbl_trending".tr,
  //     ),
  //     actions: [
  //       AppbarTrailingImage(
  //         imagePath: ImageConstant.imgSetting24Outline,
  //         margin: EdgeInsets.fromLTRB(31.h, 8.v, 31.h, 10.v),
  //       ),
  //     ],
  //     styleType: Style.bgOutline,
  //   );
  // }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 28.v,
      width: 375.h,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.green300,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray10001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: appTheme.green300,
              width: 1.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_global".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_col2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_col3".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_col4".tr,
            ),
          ),
        ],
      ),
    );
  }
}
