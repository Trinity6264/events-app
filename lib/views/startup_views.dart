import 'package:event/controllers/startup_controller.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartUpViews extends StatelessWidget {
  const StartUpViews({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<StartupController>(
        builder: ((controller) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(splaceImage),
              ),
            ),
            child: Center(
              child: Image.asset(splaceLogo),
            ),
          );
        }),
      ),
    );
  }
}
