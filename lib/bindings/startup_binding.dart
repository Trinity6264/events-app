import 'package:event/controllers/checkout_controller.dart';
import 'package:event/controllers/forgot_password_controller.dart';
import 'package:event/controllers/login_controller.dart';
import 'package:event/controllers/main_page_controllers/city_controller.dart';
import 'package:event/controllers/main_page_controllers/main_page_controller.dart';
import 'package:event/controllers/main_page_controllers/notification_controller.dart';
import 'package:event/controllers/main_page_controllers/profile_controller.dart';
import 'package:event/controllers/main_page_controllers/search_controller.dart';
import 'package:event/controllers/main_page_controllers/ticket_controller.dart';
import 'package:event/controllers/select_ticket_controller.dart';
import 'package:event/controllers/signup_controller.dart';
import 'package:event/controllers/startup_controller.dart';
import 'package:get/get.dart';

import '../controllers/choose_venue_controller.dart';
import '../controllers/main_page_controllers/venue_controller.dart';

class StartupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartupController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => ForgotPasswordController());
    Get.lazyPut(() => MainPageController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => TicketController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => CityController());
    Get.lazyPut(() => CheckoutController());
    Get.lazyPut(() => ChooseVenueController());
    Get.lazyPut(() => SelectTicketController());
    Get.lazyPut(() => VenueController());
  }
}
