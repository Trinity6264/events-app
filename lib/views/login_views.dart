import 'package:event/controllers/login_controller.dart';
import 'package:event/shared/color_pallet.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:event/shared/text_input_decor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViews extends StatelessWidget {
  const LoginViews({Key? key}) : super(key: key);
  static final LoginController _controller = Get.find<LoginController>();

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
                  'Login',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
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
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: textInputDecor.copyWith(
                    hintText: 'Password',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      _controller.toForgotPassword();
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: redColor,
                        fontSize: 16.0,
                        letterSpacing: 0.2,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.toMainPage();
                    },
                    child: const Text(
                      'Login',
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
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        color: grayColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(facebook),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(google),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(insta),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Don\'t you have an account?',
                          style: TextStyle(
                            color: blackColor,
                          ),
                        ),
                        TextSpan(
                          text: '   SignUp Now!',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              return _controller.toSignUp();
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
