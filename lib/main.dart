import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/core/utils/initial_bindings.dart';
import 'package:main_app/localization/app_localization.dart';
import 'package:main_app/presentation/iphone_13_14_eight_screen/iphone_13_14_eight_screen.dart';
import 'package:main_app/routes/app_routes.dart';
import 'package:main_app/theme/provider/theme_provider.dart';
import 'package:main_app/theme/theme_helper.dart';
import 'package:provider/provider.dart';
import 'core/utils/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // Define the ThemeProvider method
  ThemeProvider themeProvider() {
    return ThemeProvider();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => themeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            translations: AppLocalization(),
            locale: Get.deviceLocale,
            fallbackLocale: Locale('en', 'US'),
            title: 'vedz__s_application6',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
            home:
                Iphone1314EightScreen(), // Replace with your home screen widget
          );
        },
      ),
    );
  }
}
