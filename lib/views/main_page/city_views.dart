import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:event/controllers/main_page_controllers/city_controller.dart';
import 'package:event/shared/color_pallet.dart';

class CityViews extends StatelessWidget {
  final int id;
  const CityViews({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CityController>(
      autoRemove: false,
      builder: ((controller) {
        return Scaffold(
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
                              padding: EdgeInsets.only(),
                              child: Icon(
                                Icons.menu,
                                color: purpleColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Choose City',
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
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.9),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Please choose the city you most like?',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 20.0,
                              ),
                              itemCount: controller.listOfCities.length,
                              itemBuilder: (context, index) {
                                final city = controller.listOfCities[index];
                                return GestureDetector(
                                  onTap: () => controller.toVenueView(id),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: whiteColor,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage(city.bgPic),
                                          maxRadius: 40,
                                        ),
                                        const SizedBox(height: 15),
                                        Text(
                                          city.name,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: blackColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
