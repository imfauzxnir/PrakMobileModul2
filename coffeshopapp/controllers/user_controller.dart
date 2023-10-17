import 'package:get/get.dart';
import 'package:coffeeshopapp/models/user.dart';

class UserController extends GetxController {
  final user = User(
    name: 'Fauzxn Irawan',
    email: 'gwehkerenbgt@hotmail.com',
    avatarUrl: 'assets/avatar.jpeg',
  ).obs;
}
