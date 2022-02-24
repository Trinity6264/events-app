import 'package:event/views/login_views.dart';
import 'package:get/get.dart';

class StartupController extends GetxController {
  Future<void> waitForAWhile() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed('/select');
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    waitForAWhile();
  }
}
