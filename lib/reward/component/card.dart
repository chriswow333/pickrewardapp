

import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/card.bank.dart';
import 'package:pickrewardapp/reward/component/card.items.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SearchCardBar(),
        SizedBox(height:20,),
        BankItems(),
        SizedBox(height:20),
        CardItems(),
      ],
    );
  }
}


