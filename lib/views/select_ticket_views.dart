import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:event/controllers/main_page_controllers/notification_controller.dart';
import 'package:event/controllers/select_ticket_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:event/shared/dot_lines.dart';

import '../shared/images_pallet.dart';

class SelectTicketViews extends StatelessWidget {
  const SelectTicketViews({Key? key}) : super(key: key);
  static final controller = Get.find<SelectTicketController>();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
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
                        'Select Ticket',
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              20,
                              20,
                              10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Free Entry',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Free Entry Before 9pm',
                                      style: TextStyle(
                                        color: blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.free(0);
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '-',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Text(
                                      '${controller.freeQuantity}',
                                      style: const TextStyle(
                                        color: blackColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {
                                        controller.free(1);
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '+',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Second line
                          DotLines(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              20,
                              20,
                              10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Bottomless Wings',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Only Available 5pm - 10pm',
                                      style: TextStyle(
                                        color: blackColor,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                        color: orangeColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '-',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '+',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DotLines(),
                          // Third line
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              20,
                              20,
                              10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'For 2 - Sharing Platter for 2',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Only Available 5pm-10pm',
                                      style: TextStyle(
                                        color: blackColor,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                        color: orangeColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '-',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '+',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DotLines(),
                          // four line
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              20,
                              20,
                              10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'For 4 - Sharing Platter for 4',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Only Available 5pm-10pm',
                                      style: TextStyle(
                                        color: blackColor,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                        color: orangeColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '-',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '+',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DotLines(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20,
                              20,
                              20,
                              10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'For 4 - Sharing Platter for 4',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Only Available 5pm-10pm',
                                      style: TextStyle(
                                        color: blackColor,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                        color: orangeColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '-',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
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
                                            '+',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DotLines(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: _size.height * 0.1,
                width: double.infinity,
                color: whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Tickets will be reserved\nfor 10 minutes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: grayColor,
                          ),
                        ),
                        Text(
                          '\$80',
                          style: TextStyle(
                            color: orangeColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.generateBookingId();
                        controller.showBottomSheet(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                      ),
                                      child: QrImage(
                                        data: controller.bookingId,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: Text(
                                        'Your Booking Id: #${controller.bookingId}',
                                      ),
                                    ),
                                    Image.asset(greenCheck),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Your Booking is completed',
                                        style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 40,
                                        right: 20,
                                        left: 20,
                                      ),
                                      child: Text(
                                        'You will be redirected to your ticket in 5 second',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: purpleColor,
                      ),
                      child: const Text(
                        'Buy Tickets',
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
