import '../controller/trending_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<TrendingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 7.v,
          ),
          child: Obx(
            () => CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.gradientErrorContainerToAmber,
              child: CustomImageView(
                imagePath: userprofileItemModelObj.thumbsUpIcon!.value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofileItemModelObj.rotiText!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.nipponIndosariText!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Obx(
                () => Text(
                  userprofileItemModelObj.eightThousandSixHundredText!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                userprofileItemModelObj.fiftyThousandThreeHundredTwent!.value,
                style: CustomTextStyles.bodySmallTeal30001_1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
