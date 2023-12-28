import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/trending_page/models/trending_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingPage.
///
/// This class manages the state of the TrendingPage, including the
/// current trendingModelObj
class TrendingController extends GetxController {
  TrendingController(this.trendingModelObj);

  TextEditingController arrowrightController = TextEditingController();

  TextEditingController lightbulbController = TextEditingController();

  TextEditingController lightbulbController1 = TextEditingController();

  Rx<TrendingModel> trendingModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    arrowrightController.dispose();
    lightbulbController.dispose();
    lightbulbController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in trendingModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    trendingModelObj.value.dropdownItemList.refresh();
  }
}
