import 'package:event/models/swipe_card_model.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/search_model.dart';

class ChooseVenueController extends GetxController {
  List<SearchModel> listsearchModels = [
    SearchModel(
        available: true,
        bgImage: galleryOne,
        date: 'Wed, feb26,2022',
        location: 'PortCourt',
        locationDescription:
            'sdsvbhfbgjkfahbfhvbhdafbv hbv fhjbfhjbhj fbhadfbadfhb fhdfbkfvkvfbf',
        price: '50',
        time: '6:00PM - 9:00pm',
        subTitle: 'sdggys dejksdaa',
        title: 'Music'),
    SearchModel(
        available: false,
        bgImage: galleryTwo,
        date: 'Wed, feb27,2021',
        location: 'Accra',
        locationDescription:
            'sdsvbhfbgjkfahbfhvbhdafbv hbv fhjbfhjbhj fbhadfbadfhb fhdfbkfvkvfbf',
        price: '80',
        time: '6:30PM - 11:00pm',
        subTitle: 'sdggys dejksdaa',
        title: 'Tennis'),
    SearchModel(
        available: true,
        bgImage: galleryZero,
        date: 'Wed, feb26,2024',
        location: 'Lomi',
        locationDescription:
            'sdsvbhfbgjkfahbfhvbhdafbv hbv fhjbfhjbhj fbhadfbadfhb fhdfbkfvkvfbf',
        price: '70',
        time: '2:00AM - 9:00pm',
        subTitle: 'sdggys dejksdaa',
        title: 'Beach'),
  ];

  int selectedIndex = 0;
  void onIndexChnaged(int index) {
    selectedIndex = index;
    update();
  }

  void toSelectTicket() {
    Get.toNamed('/selectTicket');
  }

  void goBack() {
    Get.back();
  }
}
