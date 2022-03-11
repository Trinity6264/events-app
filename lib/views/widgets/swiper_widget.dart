import 'package:event/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class SwiperWidget extends StatelessWidget {
  final List<SearchModel> list;
  final ValueChanged<int> onChanged;
  const SwiperWidget({
    Key? key,
    required this.list,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      layout: SwiperLayout.values[2],
      curve: Curves.easeIn,
      onIndexChanged: onChanged,
      duration: 4,
      itemWidth: MediaQuery.of(context).size.width - 2 * 80,
      itemBuilder: (BuildContext context, int index) {
        return Builder(
          builder: (context) {
            Size _size = MediaQuery.of(context).size;
            return Container(
              margin: const EdgeInsets.all(10.0),
              width: _size.width * 0.7 - 20,
              height: _size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(list[index].bgImage!),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      },
      itemCount: list.length,
    );
  }
}
