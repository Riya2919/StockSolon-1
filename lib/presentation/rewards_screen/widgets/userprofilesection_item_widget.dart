import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userprofilesectionItemModelObj?.userImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlineGray80001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: userprofilesectionItemModelObj?.image1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          userprofilesectionItemModelObj.levelText!,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 3.v,
                  ),
                  child: Text(
                    userprofilesectionItemModelObj.labelLevel!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    userprofilesectionItemModelObj.quests!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
