import '../stock_page/widgets/listitem_item_widget.dart';
import 'controller/stock_controller.dart';
import 'models/listitem_item_model.dart';
import 'models/stock_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

class StockPage extends StatelessWidget {
  StockPage({Key? key})
      : super(
          key: key,
        );

  StockController controller = Get.put(StockController(StockModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineBlack,
            child: Column(
              children: [
                SizedBox(height: 26.v),
                _buildListItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount:
              controller.stockModelObj.value.listitemItemList.value.length,
          itemBuilder: (context, index) {
            ListitemItemModel model =
                controller.stockModelObj.value.listitemItemList.value[index];
            return ListitemItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
