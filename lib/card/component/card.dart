

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/component/card.bank.dart';
import 'package:pickrewardapp/card/component/card.items.dart';


class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SearchCardBar(),
          SizedBox(height:20,),
          BankItems(),
          Divider(),
          Expanded(
            child:CardItems(),
          ),
        ],
      )
    );
    ;
  }
}

