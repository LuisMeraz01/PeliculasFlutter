
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
        itemBuilder: (BuildContext context,int index){
          return Container(
            color: const Color.fromARGB(255, 0, 0, 0),
          );
        },
        itemCount: 3,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      );
  }
}