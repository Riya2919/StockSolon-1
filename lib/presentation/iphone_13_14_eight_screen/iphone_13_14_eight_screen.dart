import 'controller/iphone_13_14_eight_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/widgets/custom_elevated_button.dart';

class Iphone1314EightScreen extends GetWidget<Iphone1314EightController> {
  const Iphone1314EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 170.v),
              decoration: AppDecoration.fillBlack.copyWith(
                  // Remove rounded border
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 17.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgStocksolon1,
                    height: 302.v,
                    width: 350.h,
                    radius: BorderRadius.circular(10.h),
                  ),
                  SizedBox(height: 47.v),
                  Text(
                    "msg_multiple_ml_models".tr,
                    style: CustomTextStyles.titleLargePrimary22,
                  ),
                  SizedBox(height: 36.v),
                  Container(
                    width: 276.h,
                    margin: EdgeInsets.only(left: 43.h, right: 29.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallInterPrimary_1
                          .copyWith(height: 1.50),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                    height: 41.v,
                    text: "lbl_get_started".tr,
                    margin: EdgeInsets.only(left: 57.h, right: 43.h),
                    buttonStyle: CustomButtonStyles.fillYellow,
                    buttonTextStyle:
                        CustomTextStyles.bodyLargeOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
