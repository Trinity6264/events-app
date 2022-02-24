import 'package:get/get.dart';

class SelectTicketController extends GetxController {
  int freeQuantity = 0;
  int bottomQuantity = 0;
  int sharingQuantity1 = 0;
  int sharingQuantity2 = 0;
  int sharingQuantity3 = 0;

  void free(int index) {
    if (index == 0) {
      if (freeQuantity == 0) return;
      freeQuantity--;
      update();
    } else {
      freeQuantity++;
      update();
    }
  }
}
