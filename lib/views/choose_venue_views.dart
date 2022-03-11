import 'package:event/controllers/choose_venue_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:event/views/widgets/swiper_widget.dart';

import '../../controllers/main_page_controllers/search_controller.dart';
import '../../shared/color_pallet.dart';
import '../../shared/images_pallet.dart';
import '../../shared/text_input_decor.dart';

class ChooseVenueViews extends StatelessWidget {
  final int id;
  const ChooseVenueViews({
    Key? key,
    required this.id,
  }) : super(key: key);

  static final controller = Get.find<ChooseVenueController>();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return GetBuilder<ChooseVenueController>(
      builder: ((controller) {
        final data = controller.listsearchModels[controller.selectedIndex];
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
                          Container(
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
                          const SizedBox(width: 10),
                          const Text(
                            'Choose Venue',
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
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: _size.height * 0.4,
                                  child: Center(
                                    child: SwiperWidget(
                                      list: controller.listsearchModels,
                                      onChanged: controller.onIndexChnaged,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${data.title}',
                                            style: const TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.w800,
                                              wordSpacing: 1.5,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            '${data.subTitle}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: data.available == true
                                                      ? lightGreenColor
                                                      : redColor,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text(
                                                'Available',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: blackColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Ticket sale closes 24th Feb 10:30pm',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            '\$${data.price}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: blackColor,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.calendar_today,
                                                color: blackColor,
                                                size: 18.0,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                '${data.date}',
                                                style: const TextStyle(
                                                  color: blackColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 28.0,
                                              vertical: 8.0,
                                            ),
                                            child: Text(
                                              '6:00PM - 8:00PM',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: blackColor,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: ElevatedButton(
                                        onPressed: controller.toSelectTicket,
                                        style: ElevatedButton.styleFrom(
                                          primary: greenColor.withOpacity(
                                            0.8,
                                          ),
                                        ),
                                        child: const Text('Book Now'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: blackColor,
                                              size: 18.0,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              '${data.location}',
                                              style: const TextStyle(
                                                color: blackColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0,
                                            vertical: 0.0,
                                          ),
                                          width: _size.width * 0.7,
                                          height: 50,
                                          child: Text(
                                            '${data.locationDescription}',
                                            style: const TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0,
                                            vertical: 0.0,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'View Map',
                                                  style: TextStyle(
                                                    color: orangeColor,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(width: 5),
                                                Icon(
                                                  Icons.arrow_forward_sharp,
                                                  color: orangeColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: blackColor,
                                      ),
                                      decoration: BoxDecoration(
                                        color: lightGrayColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.0),
                                  child: Text(
                                    'Description',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',
                                  style: TextStyle(
                                    color: grayColor,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  height: _size.height * 0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(galleryTwo),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  height: _size.height * 0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(galleryTwo),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Location',
                                  style: TextStyle(
                                    color: blackColor,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  height: _size.height * 0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: controller.toSelectTicket,
                                    style: ElevatedButton.styleFrom(
                                      primary: greenColor,
                                    ),
                                    child: const Text(
                                      'Book Now',
                                      style: TextStyle(
                                        color: whiteColor,
                                        letterSpacing: 1.5,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
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
        );
      }),
    );
  }
}
