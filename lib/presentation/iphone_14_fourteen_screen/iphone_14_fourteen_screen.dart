import 'package:main_app/presentation/stock_page/stock_page.dart';
import 'package:main_app/presentation/trending_page/trending_page.dart';
import 'package:main_app/presentation/trending_tab_container_screen/trending_tab_container_screen.dart';

import 'controller/iphone_14_fourteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/core/utils/validation_functions.dart';
import 'package:main_app/widgets/custom_elevated_button.dart';
import 'package:main_app/widgets/custom_text_form_field.dart';
import 'package:main_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:main_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class Iphone14FourteenScreen extends GetWidget<Iphone14FourteenController> {
  Iphone14FourteenScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFF092635),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(right: 0.h, bottom: 0.v),
                              padding: EdgeInsets.only(
                                  left: 50.h,
                                  right: 50.h,
                                  top: 0.v,
                                  bottom: 130.v),
                              decoration: AppDecoration.fillOnErrorContainer,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 208.h,
                                            margin: EdgeInsets.only(
                                                left: 2.h, right: 67.h),
                                            child: Text(
                                                "msg_lorem_ipsum_dolor2".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumInterPrimary
                                                    .copyWith(height: 1.50)))),
                                    SizedBox(height: 31.v),
                                    _buildPhoneNumber(),
                                    SizedBox(height: 33.v),
                                    _buildPassword(),
                                    SizedBox(height: 69.v),
                                    _buildSignInButton(),
                                    SizedBox(height: 24.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaximize,
                                              height: 6.v,
                                              width: 30.h,
                                              margin: EdgeInsets.only(
                                                  top: 3.v, bottom: 7.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  "lbl_or_sign_in_with".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumInterPrimary)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaximize,
                                              height: 6.v,
                                              width: 30.h,
                                              margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 3.v,
                                                  bottom: 7.v))
                                        ]),
                                    SizedBox(height: 43.v),
                                    _buildContinueWithAppleButton(),
                                    SizedBox(height: 19.v),
                                    _buildSignInWithFacebookButton(),
                                    SizedBox(height: 19.v),
                                    _buildContinueWithGoogleButton(),
                                    SizedBox(height: 11.v)
                                  ]))),
                      // CustomImageView(
                      //     imagePath: ImageConstant.imgImage14,
                      //     height: 240.v,
                      //     width: 440.h,
                      //     radius: BorderRadius.circular(0.h),
                      //     alignment: Alignment.topCenter)
                    ])))));
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "msg_username_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
        filled: false);
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
        filled: false);
  }

  /// Section Widget
  Widget _buildSignInButton() {
    return CustomElevatedButton(
      height: 41.v,
      width: 150.h,
      text: "lbl_sign_in".tr,
      buttonStyle: CustomButtonStyles.fillDeepOrange,
      buttonTextStyle: CustomTextStyles.bodyLargeGray200,
      onPressed: () {
        // Navigate to the Trending page using GetX
        Get.toNamed(AppRoutes.trendingTabContainerScreen);
      },
    );
  }

  /// Section Widget
  Widget _buildContinueWithAppleButton() {
    return CustomElevatedButton(
        text: "msg_continue_with_apple".tr,
        margin: EdgeInsets.only(left: 17.h, right: 24.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple, height: 21.v, width: 18.h)));
  }

  /// Section Widget
  Widget _buildSignInWithFacebookButton() {
    return CustomElevatedButton(
        text: "msg_sign_in_with_facebook".tr,
        margin: EdgeInsets.only(left: 17.h, right: 23.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 25.adaptSize,
                width: 25.adaptSize)),
        onPressed: () {
          onTapSignInWithFacebookButton();
        });
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton() {
    return CustomElevatedButton(
        text: "msg_continue_with_google".tr,
        margin: EdgeInsets.only(left: 17.h, right: 24.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 25.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 23.adaptSize,
                width: 23.adaptSize)),
        onPressed: () {
          onTapContinueWithGoogleButton();
        });
  }

  onTapSignInWithFacebookButton() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapContinueWithGoogleButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
