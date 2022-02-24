import 'package:event/views/forgot_password_views.dart';
import 'package:event/views/signup_views.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  void toSignUp() {
    Get.offNamed('/signUp');
  }
  void toMainPage() {
    Get.offNamed('/mainPage');
  }

  void toForgotPassword() {
    Get.toNamed('/forgotPassword');
  }
}
