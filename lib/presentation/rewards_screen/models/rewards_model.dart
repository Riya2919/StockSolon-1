import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

class RewardsModel {
  List<UserprofilesectionItemModel> userprofilesectionItemList = [
    UserprofilesectionItemModel(
        userImage: ImageConstant.imgAtomsIcon24,
        image1: ImageConstant.imgPolygon,
        levelText: "1",
        labelLevel: "3% Off On Any Model",
        quests: "Mon"),
    UserprofilesectionItemModel(
        userImage: ImageConstant.imgAtomsIcon24WhiteA700,
        image1: ImageConstant.imgUser,
        levelText: "2",
        labelLevel: "Free 1 Month Fin...",
        quests: "Non"),
    UserprofilesectionItemModel(
        userImage: ImageConstant.imgAtomsIcon24WhiteA70024x24,
        image1: ImageConstant.imgUser,
        levelText: "3",
        labelLevel: "Rs. 150 Off",
        quests: "Mon")
  ];
}
