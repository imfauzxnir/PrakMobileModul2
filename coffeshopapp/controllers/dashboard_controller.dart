import 'package:get/get.dart';
import 'package:coffeeshopapp/views/account_screen.dart';
import 'package:coffeeshopapp/views/home_screen.dart';
import 'package:coffeeshopapp/views/order_screen.dart';
import 'package:coffeeshopapp/views/voucher_screen.dart';

class DashboardController extends GetxController {
  var currentIndex = 0.obs;

  var currentScreen = HomeScreen();

  void changeScreen(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        currentScreen = HomeScreen();
        break;
      case 1:
        currentScreen = OrderScreen() as HomeScreen;
        break;
      case 2:
        currentScreen = VoucherScreen() as HomeScreen;
        break;
      case 3:
        currentScreen = AccountScreen() as HomeScreen;
        break;
      default:
        currentScreen = HomeScreen();
    }
  }
}
