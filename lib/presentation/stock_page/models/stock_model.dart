import '../../../core/app_export.dart';
import 'listitem_item_model.dart';

/// This class defines the variables used in the [stock_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StockModel {
  Rx<List<ListitemItemModel>> listitemItemList = Rx([
    ListitemItemModel(
        image: ImageConstant.imgRectangle24.obs,
        text1: "GOTO".obs,
        text2: "GoTo Gojek Tokopedia Tbk".obs,
        text3: "198".obs,
        text4: "+1 (+0,53%)".obs),
    ListitemItemModel(
        image: ImageConstant.imgRectangle2442x42.obs,
        text1: "PTBA".obs,
        text2: "Bukit Asam Tbk".obs,
        text3: "3.790".obs,
        text4: "-20 (-0,52%)".obs),
    ListitemItemModel(
        image: ImageConstant.imgRectangle241.obs,
        text1: "ACES".obs,
        text2: "Ace Hardware Indonesia Tbk".obs,
        text3: "570".obs,
        text4: "+35 (+6,54%)".obs),
    ListitemItemModel(
        image: ImageConstant.imgRectangle242.obs,
        text1: "ANTM".obs,
        text2: "Aneka Tambang Tbk".obs,
        text3: "1.840".obs,
        text4: "+30 (+1,66%)".obs)
  ]);
}
