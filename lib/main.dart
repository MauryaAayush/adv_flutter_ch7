import 'package:adv_flutter_ch7/Navigation/views/secondScreen.dart';
import 'package:adv_flutter_ch7/Theme_change/controller/themeContoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Day1 (Counter App)/view/home_screen.dart';
import 'Navigation/views/NavScreen.dart';
import 'Theme_change/views/themeScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ThemeController themeController = Get.put(ThemeController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeController.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: const NavigationScreen(),
          getPages: [
            GetPage(name: '/home', page: () => const NavigationScreen(),
            transition: Transition.circularReveal
            ),
            GetPage(name: '/second', page: () => const Secondscreen(),
            transition: Transition.circularReveal
            )
          ],
      );
    },);
  }
}


