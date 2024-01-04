



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/summary.card.dart';
import 'package:pickrewardapp/user/component/summary.month.dart';
import 'package:pickrewardapp/user/component/summary.total.dart';

class UserEventSummary extends StatelessWidget {
  const UserEventSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CarouselSlider(
          items: [
            UserSavingSummary(),
            UserCardSummary(),
            UserMonthSummary(),
          ],
          options: CarouselOptions(
              // height: 400,
              aspectRatio: 16/7,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              // autoPlayAnimationDuration: Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: null,
              scrollDirection: Axis.horizontal,
          )
        )
        ]
      )
    );
    
  }
}

