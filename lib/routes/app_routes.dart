import 'package:main_app/presentation/ground_screen/ground_screen.dart';
import 'package:main_app/presentation/ground_screen/provider/ground_provider.dart';
import 'package:main_app/presentation/iphone_13_14_eight_screen/iphone_13_14_eight_screen.dart';
import 'package:main_app/presentation/iphone_13_14_eight_screen/binding/iphone_13_14_eight_binding.dart';
import 'package:main_app/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:main_app/presentation/iphone_14_fourteen_screen/binding/iphone_14_fourteen_binding.dart';
import 'package:main_app/presentation/news/news_page.dart';
import 'package:main_app/presentation/news/services/news.dart';
import 'package:main_app/presentation/rewards_screen/rewards_screen.dart';
import 'package:main_app/presentation/trending_tab_container_screen/trending_tab_container_screen.dart';
import 'package:main_app/presentation/trending_tab_container_screen/binding/trending_tab_container_binding.dart';
import 'package:main_app/presentation/main_page_news_bulletin_kindoff_screen/main_page_news_bulletin_kindoff_screen.dart';
import 'package:main_app/presentation/main_page_news_bulletin_kindoff_screen/binding/main_page_news_bulletin_kindoff_binding.dart';
import 'package:main_app/presentation/stock_tab_container_screen/stock_tab_container_screen.dart';
import 'package:main_app/presentation/stock_tab_container_screen/binding/stock_tab_container_binding.dart';
import 'package:main_app/presentation/iphone_13_14_nine_screen/iphone_13_14_nine_screen.dart';
import 'package:main_app/presentation/iphone_13_14_nine_screen/binding/iphone_13_14_nine_binding.dart';
import 'package:main_app/presentation/profile_container_screen/profile_container_screen.dart';
import 'package:main_app/presentation/profile_container_screen/binding/profile_container_binding.dart';
import 'package:main_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:main_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone1314EightScreen = '/iphone_13_14_eight_screen';

  static const String iphone14FourteenScreen = '/iphone_14_fourteen_screen';

  static const String trendingPage = '/trending_page';

  static const String trendingTabContainerScreen =
      '/trending_tab_container_screen';

  static const String mainPageNewsBulletinKindoffScreen =
      '/main_page_news_bulletin_kindoff_screen';

  static const String stockPage = '/stock_page';

  static const String stockTabContainerScreen = '/stock_tab_container_screen';

  static const String iphone1314NineScreen = '/iphone_13_14_nine_screen';

  static const String profilePage = '/profile_page';

  static const String profileContainerScreen = '/profile_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';
  static const String groundScreen = '/ground_screen';

  static const String rewardsScreen = '/rewards_screen';

  static const String plashScreen = '/plash_screen';
  static const String newsScreen = '/news_screen';

  static List<GetPage> pages = [
    GetPage(
      name: iphone1314EightScreen,
      page: () => Iphone1314EightScreen(),
      bindings: [
        Iphone1314EightBinding(),
      ],
    ),
    GetPage(
      name: iphone14FourteenScreen,
      page: () => Iphone14FourteenScreen(),
      bindings: [
        Iphone14FourteenBinding(),
      ],
    ),
    GetPage(
      name: trendingTabContainerScreen,
      page: () => TrendingTabContainerScreen(),
      bindings: [
        TrendingTabContainerBinding(),
      ],
    ),
    GetPage(
      name: mainPageNewsBulletinKindoffScreen,
      page: () => MainPageNewsBulletinKindoffScreen(),
      bindings: [
        MainPageNewsBulletinKindoffBinding(),
      ],
    ),
    GetPage(
      name: stockTabContainerScreen,
      page: () => StockTabContainerScreen(),
      bindings: [
        StockTabContainerBinding(),
      ],
    ),
    GetPage(
      name: iphone1314NineScreen,
      page: () => Iphone1314NineScreen(),
      bindings: [
        Iphone1314NineBinding(),
      ],
    ),
    GetPage(
      name: profileContainerScreen,
      page: () => ProfileContainerScreen(),
      bindings: [
        ProfileContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone1314EightScreen(),
      bindings: [
        Iphone1314EightBinding(),
      ],
    ),
    GetPage(
      name: groundScreen,
      page: () => GroundScreen(),
      bindings: [],
    ),
    GetPage(
      name: newsScreen,
      page: () => LandingPage(),
      bindings: [],
    ),
  ];
}
