import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/stock_page/models/stock_model.dart';

/// A controller class for the StockPage.
///
/// This class manages the state of the StockPage, including the
/// current stockModelObj
class StockController extends GetxController {
  StockController(this.stockModelObj);

  Rx<StockModel> stockModelObj;
}
