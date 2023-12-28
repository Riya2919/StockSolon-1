import 'controller/profile_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/profile_page/profile_page.dart';
import 'package:main_app/widgets/custom_bottom_bar.dart';

class ProfileContainerScreen extends GetWidget<ProfileContainerController> {
  const ProfileContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.profilePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Menu:
        return AppRoutes.profilePage;
      case BottomBarEnum.Menuonprimary:
        return "/";
      case BottomBarEnum.Menuonprimary28x28:
        return "/";
      case BottomBarEnum.Menu28x28:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
