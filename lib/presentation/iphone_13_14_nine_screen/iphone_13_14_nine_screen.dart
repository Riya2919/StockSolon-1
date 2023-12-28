import 'controller/iphone_13_14_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/widgets/custom_drop_down.dart';
import 'package:main_app/widgets/custom_elevated_button.dart';
import 'package:main_app/widgets/custom_outlined_button.dart';
import 'package:main_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314NineScreen extends GetWidget<Iphone1314NineController> {
  const Iphone1314NineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF092635),
        appBar: AppBar(
          title: Text("Your Profile"),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  children: [
                    _buildSettingsRow(),
                    SizedBox(height: 5.v),
                    _buildProfileBox(),
                    SizedBox(height: 5.v),
                    _buildUserDetailsBox(),
                    SizedBox(height: 5.v),
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
  Widget _buildSettingsRow() {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 7.v,
              right: 7.h,
            ),
            child: Text(
              "lbl_settings".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomDropDown(
            width: 178.h,
            hintText: "lbl_edit_profile".tr,
            items:
                controller.iphone1314NineModelObj.value.dropdownItemList!.value,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileBox() {
    return Container(
      width: 361.h,
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_profile_photo".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 62.h),
            child: Row(
              children: [
                Container(
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  padding: EdgeInsets.all(36.h),
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder50,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconJamIcons,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 14.v,
                    bottom: 14.v,
                  ),
                  child: Column(
                    children: [
                      CustomOutlinedButton(
                        width: 147.h,
                        text: "lbl_upload_photo".tr,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "lbl_remove".tr,
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameColumn1() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "First name".tr,
              style: CustomTextStyles.bodyMediumOnErrorContainer,
            ),
            SizedBox(height: 4.v),
            CustomTextFormField(
              width: 156.h,
              controller: controller.nameController,
              hintText: "First name".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameColumn2() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Last name".tr,
              style: CustomTextStyles.bodyMediumOnErrorContainer,
            ),
            SizedBox(height: 4.v),
            CustomTextFormField(
              width: 156.h,
              controller: controller.nameController1,
              hintText: "Last name".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameColumn3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email".tr,
          style: CustomTextStyles.bodyMediumOnErrorContainer,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: controller.nameController2,
          hintText: "Email".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNameColumn4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password".tr,
          style: CustomTextStyles.bodyMediumOnErrorContainer,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: controller.nameController3,
          hintText: "Password".tr,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconJamiconsOutlineLogosEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 14.v,
            bottom: 14.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNameColumn5() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mobile".tr,
          style: CustomTextStyles.bodyMediumOnErrorContainer,
        ),
        SizedBox(height: 9.v),
        CustomDropDown(
          icon: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdown,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          hintText: "Mobile".tr,
          items:
              controller.iphone1314NineModelObj.value.dropdownItemList1!.value,
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 14.v,
            bottom: 14.v,
          ),
          borderDecoration: DropDownStyleHelper.outlineGrayTL10,
          filled: true,
          fillColor: theme.colorScheme.onErrorContainer,
          onChanged: (value) {
            controller.onSelected1(value);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserDetailsBox() {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_user_details".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer,
          ),
          SizedBox(height: 24.v),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildNameColumn1(),
                  _buildNameColumn2(),
                ],
              ),
              SizedBox(height: 13.v),
              _buildNameColumn3(),
              SizedBox(height: 13.v),
              _buildNameColumn4(),
              SizedBox(height: 13.v),
              _buildNameColumn5(),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                height: 48.v,
                width: 144.h,
                text: "Update".tr,
                buttonStyle: CustomButtonStyles.fillYellowTL10,
                buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
