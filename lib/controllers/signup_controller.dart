import 'package:event/views/login_views.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  void toLogin() {
    Get.offNamed('/login');
  }
}
