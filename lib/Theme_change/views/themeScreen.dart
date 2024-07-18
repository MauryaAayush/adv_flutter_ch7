import 'package:adv_flutter_ch7/Theme_change/controller/themeContoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeScreen extends StatelessWidget {
   ThemeScreen({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Switch theme'),
      ),

      body: Center(
        child: Switch(
            value: themeController.isDark.value,
            onChanged: (value) {
              themeController.toggleTheme();
            },
        ),
      ),
    );
  }
}
