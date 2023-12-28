import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/trending_tab_container_screen/models/trending_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingTabContainerScreen.
///
/// This class manages the state of the TrendingTabContainerScreen, including the
/// current trendingTabContainerModelObj
class TrendingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TrendingTabContainerModel> trendingTabContainerModelObj =
      TrendingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
