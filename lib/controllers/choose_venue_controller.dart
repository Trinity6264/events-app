import 'package:event/models/swipe_card_model.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChooseVenueController extends GetxController {
  List<SwipeCardModel> data = [
    SwipeCardModel(
      name: 'Beach',
      locationName: 'Green Park Market',
      bgPic: galleryZero,
    ),
    SwipeCardModel(
      name: 'Sea',
      locationName: 'Sea Park Market',
      bgPic: galleryOne,
    ),
    SwipeCardModel(
      name: 'Beach',
      locationName: 'Green Park Market',
      bgPic: galleryTwo,
    ),
  ];
}
