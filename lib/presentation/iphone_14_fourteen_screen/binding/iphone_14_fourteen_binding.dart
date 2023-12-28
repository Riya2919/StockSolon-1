import '../controller/iphone_14_fourteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone14FourteenScreen.
///
/// This class ensures that the Iphone14FourteenController is created when the
/// Iphone14FourteenScreen is first loaded.
class Iphone14FourteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FourteenController());
  }
}
