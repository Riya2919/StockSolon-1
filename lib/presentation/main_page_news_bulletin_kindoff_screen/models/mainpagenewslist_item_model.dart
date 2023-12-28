import '../../../core/app_export.dart';

/// This class is used in the [mainpagenewslist_item_widget] screen.
class MainpagenewslistItemModel {
  MainpagenewslistItemModel({
    Rx<String>? unsplashERLgUjjazc,
    Rx<String>? id,
  })  : unsplashERLgUjjazc =
            unsplashERLgUjjazc ?? Rx(ImageConstant.imgUnsplashE7rlgujjazc),
        id = id ?? Rx("");

  Rx<String> unsplashERLgUjjazc;
  Rx<String> id;
}
