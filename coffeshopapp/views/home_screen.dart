import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coffeeshopapp/controllers/coffee_controller.dart';

class HomeScreen extends StatelessWidget {
  final CoffeeController coffeeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Orders'),
        // ...
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            // ...
          ),
        );
      }),
    );
  }
}
