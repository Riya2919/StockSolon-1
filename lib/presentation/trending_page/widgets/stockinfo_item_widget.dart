import '../controller/trending_controller.dart';
import '../models/stockinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

class StockinfoItemWidget extends StatelessWidget {
  StockinfoItemWidget(
    this.stockinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  final StockinfoItemModel stockinfoItemModelObj;
  final TrendingController controller = Get.find<TrendingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray80001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 55.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillRedA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Obx(
              () => Text(
                stockinfoItemModelObj.stockSymbol!.value,
                style: CustomTextStyles.labelLargeRoboto,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              stockinfoItemModelObj.companyName!.value,
              style: theme.textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 5.v), // Adjusted height
          Obx(
            () => Text(
              stockinfoItemModelObj.numberOfShares!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 5.v), // Adjusted height
          Obx(
            () => Text(
              stockinfoItemModelObj.percentageChange!.value,
              style: CustomTextStyles.labelLargeRobotoRed300,
            ),
          ),
        ],
      ),
    );
  }
}
