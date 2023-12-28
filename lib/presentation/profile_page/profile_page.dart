import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/widgets/custom_elevated_button.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack900,
          child: Container(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 62.v,
              right: 20.h,
            ),
            child: Column(
              children: [
                _buildCardSection(),
                SizedBox(height: 22.v),
                _buildThirtyFiveSection(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardSection() {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "lbl_buying_power".tr,
            style: CustomTextStyles.titleSmallMedium,
          ),
          SizedBox(height: 2.v),
          Text(
            "lbl_rp1_000_000".tr,
            style: CustomTextStyles.headlineLargeBold,
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_lorem_ips".tr,
                    style: CustomTextStyles.bodySmallInterPrimary,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_rp1_200_050".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "lbl_lorem_ipsm".tr,
                    style: CustomTextStyles.bodySmallInterPrimary,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_rp200_050".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: 62.v,
                  text: "lbl_deposit".tr,
                  margin: EdgeInsets.only(right: 8.h),
                  rightIcon: Container(
                    margin: EdgeInsets.only(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsector,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.bodySmallInterBlack900,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 62.v,
                  text: "lbl_withdraw".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  rightIcon: Container(
                    margin: EdgeInsets.only(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsectorBlack900,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.bodySmallInterBlack900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFiveSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_settings".tr,
            style: theme.textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 20.v),
        _buildListItemSection(),
        SizedBox(height: 15.v),
        _buildListItemSection(),
        SizedBox(height: 15.v),
        _buildListItemSection(),
        SizedBox(height: 15.v),
        _buildListItemSection(),
        SizedBox(height: 15.v),
        _buildListItemSection(),
      ],
    );
  }

  /// Common widget
  Widget _buildListItemSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconPengaturanOnprimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_security".tr,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray200,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Divider(),
      ],
    );
  }
}
