import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/iphone_13_14_nine_screen/models/iphone_13_14_nine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Iphone1314NineScreen.
///
/// This class manages the state of the Iphone1314NineScreen, including the
/// current iphone1314NineModelObj
class Iphone1314NineController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  TextEditingController nameController2 = TextEditingController();

  TextEditingController nameController3 = TextEditingController();

  Rx<Iphone1314NineModel> iphone1314NineModelObj = Iphone1314NineModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameController1.dispose();
    nameController2.dispose();
    nameController3.dispose();
  }

  onSelected(dynamic value) {
    for (var element in iphone1314NineModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone1314NineModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in iphone1314NineModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone1314NineModelObj.value.dropdownItemList1.refresh();
  }
}
