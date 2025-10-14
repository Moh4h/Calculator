import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_calculator/component/themes.dart';
import 'package:my_calculator/localization/locale.dart';
import 'package:my_calculator/localization/localeController.dart';
import 'package:my_calculator/view/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Localecontroller c = Get.put(Localecontroller());
    return GetMaterialApp(
      locale: c.initailLocale,
      theme:
          sharedPreferences!.getBool("icon") == null ||
                  sharedPreferences!.getBool("icon") == false
              ? MyThemes.myLight
              : MyThemes.myDark,
      translations: MyLocale(),
      initialRoute: "/home",
      getPages: [GetPage(name: "/home", page: () => Home())],
    );
  }
}
