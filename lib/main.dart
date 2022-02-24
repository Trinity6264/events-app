import 'package:event/bindings/startup_binding.dart';
import 'package:event/views/checkout_views.dart';
import 'package:event/views/choose_venue_views.dart';
import 'package:event/views/forgot_password_views.dart';
import 'package:event/views/login_views.dart';
import 'package:event/views/main_page/main_page_views.dart';
import 'package:event/views/main_page/venue_views.dart';
import 'package:event/views/select_ticket_views.dart';
import 'package:event/views/signup_views.dart';
import 'package:event/views/startup_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Events',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const StartUpViews(),
          binding: StartupBinding(),
        ),
        GetPage(name: '/login', page: () => const LoginViews()),
        GetPage(name: '/signUp', page: () => const SignUpViews()),
        GetPage(
          name: '/forgotPassword',
          page: () => const ForgotPasswordViews(),
        ),
        GetPage(name: '/mainPage', page: () => const MainPageViews()),
        GetPage(name: '/venue', page: () => const VenueViews()),
        GetPage(name: '/checkOut', page: () => const CheckoutViews()),
        GetPage(name: '/select', page: () => const SelectTicketViews()),
      ],
    );
  }
}
