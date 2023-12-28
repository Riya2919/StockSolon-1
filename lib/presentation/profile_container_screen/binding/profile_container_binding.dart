import '../controller/profile_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileContainerScreen.
///
/// This class ensures that the ProfileContainerController is created when the
/// ProfileContainerScreen is first loaded.
class ProfileContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileContainerController());
  }
}
