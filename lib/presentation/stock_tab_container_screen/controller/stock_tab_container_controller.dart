import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/stock_tab_container_screen/models/stock_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StockTabContainerScreen.
///
/// This class manages the state of the StockTabContainerScreen, including the
/// current stockTabContainerModelObj
class StockTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<StockTabContainerModel> stockTabContainerModelObj =
      StockTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
