import '../main_page_news_bulletin_kindoff_screen/widgets/mainpagenewslist_item_widget.dart';
import 'controller/main_page_news_bulletin_kindoff_controller.dart';
import 'models/mainpagenewslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

class MainPageNewsBulletinKindoffScreen
    extends GetWidget<MainPageNewsBulletinKindoffController> {
  const MainPageNewsBulletinKindoffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: _buildNewsList(),
          ),
        ),
      ),
    );
  }

  Widget _buildNewsList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: controller.mainPageNewsBulletinKindoffModelObj.value
            .mainpagenewslistItemList.value.length,
        itemBuilder: (context, index) {
          MainpagenewslistItemModel model = controller
              .mainPageNewsBulletinKindoffModelObj
              .value
              .mainpagenewslistItemList
              .value[index];
          return MainpagenewslistItemWidget(model);
        },
      ),
    );
  }

  Widget _buildNewsRow({
    required String dynamicText,
    required String loremIpsumDolor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            dynamicText,
            style: CustomTextStyles.labelLargeBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        SizedBox(
          width: 186.h,
          child: Text(
            loremIpsumDolor,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallInterBlack900_1.copyWith(
              color: appTheme.black900,
              height: 1.50,
            ),
          ),
        ),
      ],
    );
  }
}
