import 'package:event/shared/color_pallet.dart';
import 'package:event/shared/images_pallet.dart';
import 'package:event/shared/text_input_decor.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViews extends StatelessWidget {
  const ForgotPasswordViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(forgetBg),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu_rounded,
                            color: whiteColor,
                          ),
                        ),
                        const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: _size.height * 0.4,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(forgetLock),
                        ),
                      ),
                    ),
                    const Text(
                      'Forgot Your Password',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: textInputDecor.copyWith(
                        hintText: 'Enter Your Email',
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'SEND',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: violetColor,
                          elevation: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
