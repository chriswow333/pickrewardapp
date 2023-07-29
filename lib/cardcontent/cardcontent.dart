

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardcontent/component/cardcontent.header.dart';
import 'package:pickrewardapp/cardcontent/component/cardcontent.tab.dart';
import 'package:pickrewardapp/cardcontent/component/cardcontent.items.dart';
import 'package:pickrewardapp/cardcontent/component/cardactivity.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.dart';


class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:50),
        child: CardContentPage(),
      ),
    );
  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Banner(),
          SizedBox(height:20),
          CardContentHeader(),
          Divider(),
          CarContentTab(),
          CardContentScroll(),
        ]
      );
  }
}


class CardContentScroll extends StatelessWidget {
  const CardContentScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height:MediaQuery.of(context).size.height,
      child:SingleChildScrollView(
        child:Column(
          children:[
            CardContentItems(),
            CardActivity(),
            CardReward(),
          ]
        ),
      ),
    );
  }
}


class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '找CoCo',
      style: TextStyle(
        fontSize: 20,
      ),
      
    );
  }
}


