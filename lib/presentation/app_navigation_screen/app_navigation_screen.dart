import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "iPhone 13 & 14 - Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iphone1314EightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "iPhone 14 - Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone14FourteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Trending - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main page- news bulletin kindoff".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mainPageNewsBulletinKindoffScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "stock - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.stockTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "iPhone 13 & 14 - Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iphone1314NineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "profile - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gameification-screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groundScreen),
                        ),
                        _buildScreenTitle(
                            screenTitle: "Reward screen".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.rewardsScreen)),
                      ],
                    ),
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
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
