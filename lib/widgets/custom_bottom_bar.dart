import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMenu,
      activeIcon: ImageConstant.imgMenu,
      type: BottomBarEnum.Menu,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenuOnprimary,
      activeIcon: ImageConstant.imgMenuOnprimary,
      type: BottomBarEnum.Menuonprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenuOnprimary28x28,
      activeIcon: ImageConstant.imgMenuOnprimary28x28,
      type: BottomBarEnum.Menuonprimary28x28,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenu28x28,
      activeIcon: ImageConstant.imgMenu28x28,
      type: BottomBarEnum.Menu28x28,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -10,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 28.adaptSize,
                width: 28.adaptSize,
                color: theme.colorScheme.onPrimary,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 28.adaptSize,
                width: 28.adaptSize,
                color: theme.colorScheme.onPrimary,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Menu,
  Menuonprimary,
  Menuonprimary28x28,
  Menu28x28,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
