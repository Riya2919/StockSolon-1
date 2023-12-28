import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.userImage,
    this.image1,
    this.levelText,
    this.labelLevel,
    this.quests,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgAtomsIcon24;
    image1 = image1 ?? ImageConstant.imgPolygon;
    levelText = levelText ?? "1";
    labelLevel = labelLevel ?? "3% Off On Any Model";
    quests = quests ?? "Mon";
    id = id ?? "";
  }

  String? userImage;

  String? image1;

  String? levelText;

  String? labelLevel;

  String? quests;

  String? id;
}
