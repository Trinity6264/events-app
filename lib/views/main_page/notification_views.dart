import 'package:event/controllers/main_page_controllers/notification_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NotificationViews extends StatelessWidget {
  const NotificationViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GetBuilder<NotificationController>(
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
                          'My Notification',
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
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            height: _size.height * 0.1 + 30,
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            color: whiteColor,
                            child: Row(
                              children: [
                                Container(
                                  width: 4.0,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 10.0,
                                  ),
                                  height: double.infinity,
                                  color: purpleColor,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        purpleColor,
                                        lightPurpleColor,
                                      ],
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'B',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Text(
                                          'Date-12-02-2022',
                                          style: TextStyle(
                                            color: blackColor,
                                          ),
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet consecture consecture',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
