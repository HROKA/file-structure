import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/route_manager.dart';

import './my_scroll_behavior.dart';
import '../../constants/index.dart';
import '../../screens/my_app/routes.dart';

class MyApp extends StatelessWidget {
  // final AppLanguageController appLanguageController =
  //     Get.find<AppLanguageController>();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: Locale(appLanguageController.appLocale),
      locale: const Locale('en'),
      builder: (BuildContext context, Widget? child) {
        return ScrollConfiguration(
          // This behavior disables the effect of the default scroll behavior.
          behavior: MyScrollBehavior(),
          child: FlutterSmartDialog(child: child),
        );
      },

      // we use the fallbackLocale to handel any error in language files and use the en as default language
      fallbackLocale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: cHome,
      getPages: appRoutes,
    );
  }
}
