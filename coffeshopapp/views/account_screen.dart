import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coffeeshopapp/controllers/user_controller.dart';

class AccountScreen extends StatelessWidget {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          // ...
        ),
      ),
    );
  }
}
