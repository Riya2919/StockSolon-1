import '../trending_page/widgets/stockinfo_item_widget.dart';
import '../trending_page/widgets/userprofile_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/stockinfo_item_model.dart';
import 'models/trending_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/widgets/custom_drop_down.dart';
import 'package:main_app/widgets/custom_floating_text_field.dart';
import 'package:main_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TrendingPage extends StatelessWidget {
  TrendingPage({Key? key})
      : super(
          key: key,
        );

  TrendingController controller =
      Get.put(TrendingController(TrendingModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 0.v),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Column(
              children: [
                SizedBox(height: 0.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(
                            children: [
                              Container(
                                width: 50.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: Text(
                                  "lbl_asia".tr,
                                  style: CustomTextStyles
                                      .bodyMediumSecondaryContainer,
                                ),
                              ),
                              Container(
                                width: 56.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: Text(
                                  "lbl_eropa".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Container(
                                width: 72.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: Text(
                                  "lbl_amerika".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Container(
                                width: 91.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: Text(
                                  "lbl_mata_uang".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildFrameSeventyNine(),
                      SizedBox(height: 22.v),
                      _buildSixtyFour(),
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 130.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                child: Text(
                                  "lbl_lihat_semua".tr,
                                  style: CustomTextStyles.bodyMediumGreen300,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRightGreen300,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 29.v),
                      _buildFrameNinetyOne(),
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

  /// Section Widget
  Widget _buildFrameSeventyNine() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFloatingTextField(
            width: 106.h,
            controller: controller.arrowrightController,
            labelText: "lbl_ihsg".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_ihsg".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 24.adaptSize,
                minWidth: 24.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 24.adaptSize,
                height: 24.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                ),
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
          CustomFloatingTextField(
            width: 102.h,
            controller: controller.lightbulbController,
            labelText: "lbl_nikkei".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_nikkei".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 24.adaptSize,
                minWidth: 24.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 24.adaptSize,
                height: 24.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.red300.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    6.h,
                  ),
                ),
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLightbulb,
                ),
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: theme.colorScheme.onPrimaryContainer,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray800,
                width: 1.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Container(
              height: 48.v,
              width: 110.h,
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "lbl_14_863_10".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowright,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 13.v,
                          ),
                          child: Text(
                            "lbl_sensei".tr,
                            style: CustomTextStyles.labelLargeRobotoGray10001_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomFloatingTextField(
            width: 102.h,
            controller: controller.lightbulbController1,
            labelText: "lbl_nikkei".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_nikkei".tr,
            textInputAction: TextInputAction.done,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 24.adaptSize,
                minWidth: 24.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 24.adaptSize,
                height: 24.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.red300.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    6.h,
                  ),
                ),
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLightbulb,
                ),
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 1.v,
                ),
                child: Text(
                  "lbl_trending".tr,
                  style: CustomTextStyles.bodyMediumGray10001,
                ),
              ),
              CustomDropDown(
                width: 78.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      9.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgDownArrow24Outline,
                    height: 18.adaptSize,
                    width: 15.adaptSize,
                  ),
                ),
                hintText: "lbl_14_dec".tr,
                hintStyle: CustomTextStyles.labelLargeRobotoGray10001,
                items:
                    controller.trendingModelObj.value.dropdownItemList!.value,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            right: 34.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 23.v,
                );
              },
              itemCount: controller
                  .trendingModelObj.value.userprofileItemList.value.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model = controller
                    .trendingModelObj.value.userprofileItemList.value[index];
                return UserprofileItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_recommendations".tr,
          style: CustomTextStyles.bodyMediumGray10001,
        ),
        SizedBox(height: 15.v),
        SizedBox(
          height: 113.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(right: 14.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: controller
                  .trendingModelObj.value.stockinfoItemList.value.length,
              itemBuilder: (context, index) {
                StockinfoItemModel model = controller
                    .trendingModelObj.value.stockinfoItemList.value[index];
                return StockinfoItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
