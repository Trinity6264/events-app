import 'package:event/controllers/main_page_controllers/profile_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:event/shared/text_input_decor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileViews extends StatelessWidget {
  const ProfileViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
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
                  const CircleAvatar(
                    backgroundColor: whiteColor,
                    maxRadius: 40.0,
                    child: CircleAvatar(
                      maxRadius: 38,
                      backgroundImage: AssetImage(
                        williamsJones,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Williams Jones',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'williamsjones@gmail.com',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
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
                      child: SingleChildScrollView(
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.name,
                                decoration: textInputDecor.copyWith(
                                  hintText: 'Name',
                                  fillColor: lightGrayColor,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: textInputDecor.copyWith(
                                  hintText: 'Email',
                                  fillColor: lightGrayColor,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.phone,
                                decoration: textInputDecor.copyWith(
                                  hintText: 'Phone Number',
                                  fillColor: lightGrayColor,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.name,
                                decoration: textInputDecor.copyWith(
                                  hintText: 'DOB',
                                  fillColor: lightGrayColor,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.streetAddress,
                                decoration: textInputDecor.copyWith(
                                  hintText: 'Address',
                                  fillColor: lightGrayColor,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: lightGrayColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: purpleColor,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Add Listing',
                                      style: TextStyle(
                                        color: violetColor,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Change Password',
                                      style: TextStyle(
                                        color: violetColor,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
