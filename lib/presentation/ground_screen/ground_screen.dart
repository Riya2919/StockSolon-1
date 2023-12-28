// ignore_for_file: non_constant_identifier_names

import 'package:main_app/core/app_export.dart';
import 'package:main_app/core/utils/navigator_service.dart';
import 'package:main_app/presentation/sideMenu/navbar.dart';
import 'package:provider/provider.dart';
import 'models/ground_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/presentation/rewards_screen/rewards_screen.dart';
import 'provider/ground_provider.dart';

class GroundScreen extends StatefulWidget {
  const GroundScreen({Key? key}) : super(key: key);

  @override
  GroundScreenState createState() => GroundScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GroundProvider(), child: GroundScreen());
  }
}

class GroundScreenState extends State<GroundScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Playground Page"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Color(0XFFF5F5F5),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 21.v),
              Text(
                "lbl_playground".tr,
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.v),
              _buildUpRow(context),
              SizedBox(height: 40.v),
              _buildUpRow1(context),
              SizedBox(height: 26.v),
              _buildTenColumn(context),
              SizedBox(height: 26.v),
              _buildElevenColumn2(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                        opacity: 0.5,
                        child: Text("lbl_p_l_percentage".tr,
                            style: CustomTextStyles.titleSmallWhiteA700_1)),
                    Text("lbl_10_05".tr,
                        style: CustomTextStyles.headlineSmallWhiteA700)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgAtomsLevelBadge,
              height: 64.adaptSize,
              width: 64.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildUpRow1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 5.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(children: [
          Container(
              width: 82.h,
              margin: EdgeInsets.only(top: 4.v),
              child: Text("msg_reward_day_countdown".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallWhiteA700
                      .copyWith(height: 1.40))),
          Spacer(flex: 38),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: SizedBox(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  child: CircularProgressIndicator(
                      value: 0.5,
                      backgroundColor: appTheme.blueGray90002,
                      color: appTheme.green400))),
          Spacer(flex: 61),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 21.v,
              width: 21.h,
              margin: EdgeInsets.only(top: 7.v, right: 7.h, bottom: 7.v),
              onTap: () {
                Get.to(RewardsScreen());
              })
        ]));
  }

  /// Section Widget
  Widget _buildTenColumn(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_monetary_reward".tr,
              style: CustomTextStyles.titleMediumBluegray90001)),
      SizedBox(height: 22.v),
      _buildElevenColumn(context)
    ]);
  }

  /// Section Widget
  Widget _buildElevenColumn2(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_completed".tr,
              style: CustomTextStyles.titleMediumBluegray90001)),
      SizedBox(height: 22.v),
      _buildElevenColumn(context),
      SizedBox(height: 15.v),
      _buildElevenColumn(context),
      SizedBox(height: 15.v),
      _buildElevenColumn(context),
    ]);
  }

  /// Common widget
  Widget _buildElevenColumn(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_free_1_month_financial".tr,
                  style: CustomTextStyles.titleSmallWhiteA700),
              SizedBox(height: 2.v),
              Text("lbl_expired".tr, style: theme.textTheme.bodyMedium)
            ]));
  }

  /// Navigates to the rewardsScreen when the action is triggered.
  Rewardscreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rewardsScreen,
    );
  }
}
