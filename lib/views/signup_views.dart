import 'package:event/controllers/signup_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:event/shared/text_input_decor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViews extends StatelessWidget {
  const SignUpViews({Key? key}) : super(key: key);
  static final SignUpController _controller = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgLoginColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(loginSignUp),
                    ),
                  ),
                ),
                const Text(
                  'Sign up',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: textInputDecor.copyWith(
                    hintText: 'Name',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: textInputDecor.copyWith(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: textInputDecor.copyWith(
                    hintText: 'Mobile Number',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: textInputDecor.copyWith(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: violetColor,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'You have an account?',
                          style: TextStyle(
                            color: blackColor,
                          ),
                        ),
                        TextSpan(
                          text: '   login Now!',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _controller.toLogin();
                            },
                          style: const TextStyle(
                            color: redColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
