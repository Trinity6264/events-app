import 'package:event/controllers/choose_venue_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:get/get.dart';

import '../shared/color_pallet.dart';
import '../shared/text_input_decor.dart';

class ChooseVenueViews extends StatelessWidget {
  const ChooseVenueViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseVenueController>(
      builder: ((controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: whiteColor,
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        purpleColor,
                        lightPurpleColor,
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 30.0,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: blackColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'My Profile',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Stack(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_none,
                                  color: whiteColor,
                                ),
                              ),
                              const Positioned(
                                right: 12,
                                top: 12,
                                child: CircleAvatar(
                                  backgroundColor: whiteColor,
                                  maxRadius: 6.0,
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10.0),
                          const CircleAvatar(
                            backgroundColor: whiteColor,
                            child: Icon(
                              Icons.person_outline,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Stack(
                          children:
                              List.generate(controller.data.length, (index) {
                            return Swipable(
                              child: Center(
                                child: Container(
                                  width: 200,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          controller.data[index].bgPic),
                                      fit: BoxFit.cover,
                                    ),
                                    color: purpleColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
