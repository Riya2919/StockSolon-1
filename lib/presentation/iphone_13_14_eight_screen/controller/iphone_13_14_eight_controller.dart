import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/iphone_13_14_eight_screen/models/iphone_13_14_eight_model.dart';

/// A controller class for the Iphone1314EightScreen.
///
/// This class manages the state of the Iphone1314EightScreen, including the
/// current iphone1314EightModelObj
class Iphone1314EightController extends GetxController {
  Rx<Iphone1314EightModel> iphone1314EightModelObj = Iphone1314EightModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.iphone14FourteenScreen,
      );
    });
  }
}
