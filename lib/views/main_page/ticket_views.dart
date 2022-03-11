import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_page_controllers/ticket_controller.dart';
import '../../shared/color_pallet.dart';

class TicketViews extends StatelessWidget {
  const TicketViews({Key? key}) : super(key: key);
  static final controller = Get.find<TicketController>();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
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
                      'My Ticket',
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.95),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10.0,
                        ),
                        height: _size.height * 0.2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30.0,
                            horizontal: 20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Belgain Beer Festival',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '\$100.00',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: blackColor,
                                      size: 16.0,
                                    ),
                                    Text(
                                      'Vincom Center - Hawai',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.calendar_month,
                                      color: blackColor,
                                      size: 16.0,
                                    ),
                                    Text(
                                      'Sun, 29th Feb - 5:00m',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
  }
}
