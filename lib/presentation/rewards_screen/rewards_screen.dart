import 'package:main_app/core/app_export.dart';
import 'package:main_app/core/utils/navigator_service.dart';
import 'package:main_app/presentation/rewards_screen/models/userprofilesection_item_model.dart';
import 'package:main_app/presentation/rewards_screen/widgets/userprofilesection_item_widget.dart';
import 'package:main_app/theme/app_decoration.dart';
import 'package:flutter/material.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  RewardsScreenState createState() => RewardsScreenState();
}

class RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildContentSection(context),
              SizedBox(height: 16.v),
              _buildUserProfileSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContentSection(BuildContext context) {
    return Container(
      height: 302.v,
      width: 359.h,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 247.v,
                      width: 220.h,
                      margin: EdgeInsets.only(right: 22.h),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 220.adaptSize,
                              width: 220.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 19.h,
                                vertical: 36.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup1,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAtomsLevelBadgeAmberA400,
                                  height: 148.adaptSize,
                                  width: 148.adaptSize,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_congratulations".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_10_05_ppi".tr,
                                    style: CustomTextStyles
                                        .bodyMediumBluegray10001,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 298.h,
                    child: Text(
                      "msg_keep_this_up_until".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMedium15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20.v),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    // Simulated data for demonstration
    List<UserprofilesectionItemModel> userProfiles = [
      UserprofilesectionItemModel(/* Initialize your model here */),
      UserprofilesectionItemModel(),
      UserprofilesectionItemModel(),

      // Add more items as needed
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: userProfiles.length,
        itemBuilder: (context, index) {
          UserprofilesectionItemModel model = userProfiles[index];
          return UserprofilesectionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
