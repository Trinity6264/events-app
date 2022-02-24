import 'package:event/models/city_model.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:get/get.dart';

class CityController extends GetxController {
  final List<CityModel> listOfCities = [
    CityModel(name: 'Lagos', bgPic: lagos),
    CityModel(name: 'Abuja', bgPic: abuja),
    CityModel(name: 'Accra', bgPic: accra),
    CityModel(name: 'Johanesbourg', bgPic: johanesBourg),
    CityModel(name: 'Cape Town', bgPic: mainLand),
    // cape town img not working
    CityModel(name: 'Dubai', bgPic: dubai),
    CityModel(name: 'Island', bgPic: lagos),
    CityModel(name: 'Mainland', bgPic: mainLand),
  ];
}
