import 'package:event/views/choose_venue_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../city_views.dart';
import '../venue_views.dart';
import 'routes.dart';

class ChooseCityWrapper extends StatelessWidget {
  const ChooseCityWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(Routes.id),
      initialRoute: '/city',
      onGenerateRoute: (settings) {
        if (settings.name == Routes.city) {
          return GetPageRoute(
            page: ()=> const CityViews(id: Routes.id),            
          );
        }else if(settings.name == Routes.chooseVenue){
          return GetPageRoute(
            page: ()=> const ChooseVenueViews(id: Routes.id),            
          );
        }else{
          return GetPageRoute(
            page: ()=> const VenueViews(id: Routes.id),            
          );
        }
      },
    );
  }
}
