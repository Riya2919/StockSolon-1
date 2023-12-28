import '../../../core/app_export.dart';

/// This class is used in the [listitem_item_widget] screen.
class ListitemItemModel {
  ListitemItemModel({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle24);
    text1 = text1 ?? Rx("GOTO");
    text2 = text2 ?? Rx("GoTo Gojek Tokopedia Tbk");
    text3 = text3 ?? Rx("198");
    text4 = text4 ?? Rx("+1 (+0,53%)");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? text4;

  Rx<String>? id;
}
