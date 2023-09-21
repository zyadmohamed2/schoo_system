import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({super.key});

  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;
    return CarouselSlider(
          options: CarouselOptions(
              height: size.height * .3,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              autoPlay: true),
          items: [
            Image.asset('assets/images/Rectangle 10.png'),
            Image.asset('assets/images/pana.png')
          ],
        );
  }
}