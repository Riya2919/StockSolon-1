import '../controller/iphone_13_14_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone1314NineScreen.
///
/// This class ensures that the Iphone1314NineController is created when the
/// Iphone1314NineScreen is first loaded.
class Iphone1314NineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1314NineController());
  }
}
