import '../controller/main_page_news_bulletin_kindoff_controller.dart';
import '../models/mainpagenewslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

// ignore: must_be_immutable
class MainpagenewslistItemWidget extends StatelessWidget {
  MainpagenewslistItemWidget(
    this.mainpagenewslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainpagenewslistItemModel mainpagenewslistItemModelObj;

  var controller = Get.find<MainPageNewsBulletinKindoffController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: mainpagenewslistItemModelObj.unsplashERLgUjjazc!.value,
        height: 205.v,
        width: 390.h,
      ),
    );
  }
}
