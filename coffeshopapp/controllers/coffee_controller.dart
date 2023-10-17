import 'package:get/get.dart';
import 'package:coffeeshopapp/models/coffee.dart';

class CoffeeController extends GetxController {
  final coffeeList = <Coffee>[].obs;

  @override
  void onInit() {
    coffeeList.assignAll([
      Coffee(
        name: 'Signature Beans',
        price: 5.99,
        imageUrl: 'assets/signature_beans.jpg',
      ),
      // Tambahkan item kopi lainnya di sini
    ]);

    super.onInit();
  }
}
