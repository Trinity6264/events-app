import 'dart:math';

import 'package:event/shared/color_pallet.dart';
import 'package:flutter/cupertino.dart';
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

  String bookingId = '';
  void generateBookingId() {
    final id = Random().nextInt(999999);
    bookingId = id.toString();
  }

// to show bottomSheet
  void showBottomSheet({required Widget child}) {
    Get.bottomSheet(
      child,
      enableDrag: false,
      isDismissible: false,
    );
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed('/checkOut');
    });
  }

  void toCheckOut() {
    Get.toNamed('/checkOut');
  }
}
