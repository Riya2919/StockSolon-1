import 'package:main_app/presentation/main_page_news_bulletin_kindoff_screen/main_page_news_bulletin_kindoff_screen.dart';
import 'package:main_app/presentation/sideMenu/navbar.dart';

import 'controller/stock_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/stock_page/stock_page.dart';
import 'package:main_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class StockTabContainerScreen extends GetWidget<StockTabContainerController> {
  const StockTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Stocks Page"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "lbl_portfolio".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "lbl_ihsg".tr,
                            style: CustomTextStyles.titleLargePrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildPortfolioForty(),
                      SizedBox(height: 34.v),
                      _buildPortfolioSahamTrending(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPortfolioForty() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_7_056_04".tr,
              style: theme.textTheme.displaySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_35_72_0_50".tr,
              style: CustomTextStyles.titleMediumInterOnSecondaryContainer,
            ),
          ),
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 140.v,
            width: 350.h,
          ),
          SizedBox(height: 5.v),
          _buildPortfolioRow1(
            highText: "lbl_open".tr,
            sevenHundredTenThousandEightyOneText: "lbl_7_091_76".tr,
            valueText: "lbl_lot".tr,
            tCounterText: "lbl_186_26_m".tr,
          ),
          SizedBox(height: 5.v),
          _buildPortfolioRow1(
            highText: "lbl_high".tr,
            sevenHundredTenThousandEightyOneText: "lbl_7_100_81".tr,
            valueText: "lbl_value".tr,
            tCounterText: "lbl_9_88_t".tr,
          ),
          SizedBox(height: 5.v),
          _buildPortfolioRow1(
            highText: "lbl_low".tr,
            sevenHundredTenThousandEightyOneText: "lbl_7_016_70".tr,
            valueText: "lbl_freq".tr,
            tCounterText: "lbl_1_10_m".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPortfolioSahamTrending() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 26.v,
            width: 347.h,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.black900,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.black900,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_trending".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_top_gainer".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_top_loser".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_most_active".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 293.v,
            child: TabBarView(
              controller: controller.tabviewController,
              children: [
                StockPage(),
                StockPage(),
                StockPage(),
                StockPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPortfolioRow1({
    required String highText,
    required String sevenHundredTenThousandEightyOneText,
    required String valueText,
    required String tCounterText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          highText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Spacer(
          flex: 42,
        ),
        Text(
          sevenHundredTenThousandEightyOneText,
          style: CustomTextStyles.bodySmallInterTeal300.copyWith(
            color: appTheme.teal300,
          ),
        ),
        Spacer(
          flex: 14,
        ),
        Text(
          valueText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Spacer(
          flex: 43,
        ),
        Text(
          tCounterText,
          style: CustomTextStyles.bodySmallInterGreen600.copyWith(
            color: appTheme.green600,
          ),
        ),
      ],
    );
  }
}
