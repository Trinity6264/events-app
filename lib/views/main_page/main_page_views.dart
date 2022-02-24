import 'package:event/controllers/main_page_controllers/main_page_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:event/views/main_page/city_views.dart';
import 'package:event/views/main_page/notification_views.dart';
import 'package:event/views/main_page/profile_views.dart';
import 'package:event/views/main_page/search_views.dart';
import 'package:event/views/main_page/ticket_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPageViews extends StatelessWidget {
  const MainPageViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: ((controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: whiteColor,
          body: SafeArea(
            child: PageStorage(
              bucket: controller.pageBucket,
              child: controller.currentPage,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.onChanged(4, const CityViews());
            },
            backgroundColor: violetColor,
            child: const Icon(Icons.home, color: whiteColor),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10.0,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          controller.onChanged(0, const SearchViews());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: controller.currentIndex == 0
                                  ? violetColor
                                  : grayColor,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: controller.currentIndex == 0
                                    ? violetColor
                                    : grayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          controller.onChanged(1, const TicketViews());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.airplane_ticket,
                              color: controller.currentIndex == 1
                                  ? violetColor
                                  : grayColor,
                            ),
                            Text(
                              'Ticket',
                              style: TextStyle(
                                color: controller.currentIndex == 1
                                    ? violetColor
                                    : grayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          controller.onChanged(2, const NotificationViews());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications_none,
                              color: controller.currentIndex == 2
                                  ? violetColor
                                  : grayColor,
                            ),
                            Text(
                              'Notification',
                              style: TextStyle(
                                color: controller.currentIndex == 2
                                    ? violetColor
                                    : grayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          controller.onChanged(3, const ProfileViews());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: controller.currentIndex == 3
                                  ? violetColor
                                  : grayColor,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: controller.currentIndex == 3
                                    ? violetColor
                                    : grayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
