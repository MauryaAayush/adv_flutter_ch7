import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/count_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GetX Counter App'),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: counterController.increment,
          child:  Icon(Icons.add),
      ),

      body: Center(
        child: Obx(() => Text('Count : ${counterController.count}',style: const TextStyle(
          fontSize: 20,
        ),)),
      ),
    );
  }
}
