import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.toNamed('/second');
        }, child: const Text('Next'))
      )
    );
  }
}
