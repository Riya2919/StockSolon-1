import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/iphone_14_fourteen_screen/models/iphone_14_fourteen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Iphone14FourteenScreen.
///
/// This class manages the state of the Iphone14FourteenScreen, including the
/// current iphone14FourteenModelObj
class Iphone14FourteenController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<Iphone14FourteenModel> iphone14FourteenModelObj =
      Iphone14FourteenModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
