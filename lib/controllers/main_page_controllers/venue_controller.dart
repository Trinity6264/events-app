import 'package:event/models/venue_model.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:get/get.dart';

class VenueController extends GetxController {
  final List<VenueModel> data = [
    VenueModel(pic: bars, title: 'Bar+18'),
    VenueModel(pic: beach, title: 'Beach'),
    VenueModel(pic: concertComedies, title: 'Concert/Comedies'),
    VenueModel(pic: corporateEvents, title: 'Cooperates/Events'),
    VenueModel(pic: gallerySelect, title: 'Beach'),
    VenueModel(pic: liveMusic, title: 'Live Music'),
    VenueModel(pic: lounges, title: 'Lounges'),
    VenueModel(pic: restaurants, title: 'Restaurants'),
    VenueModel(pic: roofTops, title: 'Roof Tops'),
  ];
}
