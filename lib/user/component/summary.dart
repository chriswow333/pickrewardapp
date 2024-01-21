



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/summary.card.dart';
import 'package:pickrewardapp/user/component/summary.month.dart';
import 'package:pickrewardapp/user/component/summary.total.dart';

class UserEventSummary extends StatelessWidget {
  UserEventSummary({super.key});

  final CarouselController _controller = CarouselController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Palette.kToBlack[0],
      ),
      padding: const EdgeInsets.only(bottom:20),
      width:double.infinity,
      child:Column(
        children:[
          CarouselSlider(
            carouselController: _controller,
            items: const [
              UserSavingSummary(),
              UserCardSavingSummary(),
              UserMonthSavingSummary(),
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
                onPageChanged: (val, _) {
                  print(val);
                },
                scrollDirection: Axis.horizontal,
            )
          ),
          const SizedBox(height:10,),
          SizedBox(
            width:80,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                SliderDot(index:0, controller: _controller,),
                SliderDot(index:1, controller: _controller,),
                SliderDot(index:2, controller: _controller,),
              ]
            )
          )
        ]
      )
    );
  }
}

class SliderDot extends StatelessWidget {
  const SliderDot({super.key, required this.index, required this.controller});
  
  final int index;
  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // print('slkfjghsfuig');
        // print(controller);
        // controller.animateToPage(index);

      },
      child:Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          color: Palette.kToYellow[300],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}


