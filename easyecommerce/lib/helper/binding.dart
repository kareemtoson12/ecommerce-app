import 'package:easyecommerce/screens/Home_page.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePage());
  }
}
