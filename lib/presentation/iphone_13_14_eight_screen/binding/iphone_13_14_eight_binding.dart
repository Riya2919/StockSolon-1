import '../controller/iphone_13_14_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone1314EightScreen.
///
/// This class ensures that the Iphone1314EightController is created when the
/// Iphone1314EightScreen is first loaded.
class Iphone1314EightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1314EightController());
  }
}
