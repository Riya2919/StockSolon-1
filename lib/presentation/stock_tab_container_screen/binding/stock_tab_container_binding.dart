import 'package:get/get.dart';

import '../controller/stock_tab_container_controller.dart';

/// A binding class for the StockTabContainerScreen.
///
/// This class ensures that the StockTabContainerController is created when the
/// StockTabContainerScreen is first loaded.
class StockTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockTabContainerController());
  }
}
