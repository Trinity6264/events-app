
import 'package:get/get.dart';

class StartupController extends GetxController {
  Future<void> waitForAWhile() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed('/mainPage');
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    waitForAWhile();
  }
}
