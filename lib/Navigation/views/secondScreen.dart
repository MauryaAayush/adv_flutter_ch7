import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 2'),
      ),
    
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.back();
        }, child: Text('Back'))
      ),
    );
  }
}
