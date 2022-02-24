import 'package:event/shared/color_pallet.dart';
import 'package:flutter/material.dart';

class DotLines extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        for (int i = 0; i < 40; i++)
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 2.0,
              ),
              width: 5,
              height: 2,
              color: grayColor,
            ),
          ),
      ],
    );
  }
  
}