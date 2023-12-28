import '../controller/stock_controller.dart';
import '../models/listitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

// ignore: must_be_immutable
class ListitemItemWidget extends StatelessWidget {
  ListitemItemWidget(
    this.listitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListitemItemModel listitemItemModelObj;

  var controller = Get.find<StockController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: listitemItemModelObj.image!.value,
              height: 42.adaptSize,
              width: 42.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listitemItemModelObj.text1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    listitemItemModelObj.text2!.value,
                    style: CustomTextStyles.bodySmallInterBluegray400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      listitemItemModelObj.text3!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    listitemItemModelObj.text4!.value,
                    style: CustomTextStyles.bodySmallInterTeal300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
