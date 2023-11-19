

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/component/card.bank.dart';
import 'package:pickrewardapp/card/component/card.items.dart';
import 'package:pickrewardapp/card/component/card.search.dart';
import 'package:pickrewardapp/card/component/card.search.item.dart';
import 'package:pickrewardapp/card/viewmodel/card.search.dart';
import 'package:provider/provider.dart';


class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SearchCardBar(),
          SizedBox(height:20,),
          if(searchCardViewModel.searchCardFlag)
            CardSearchItems(),
          if(!searchCardViewModel.searchCardFlag)
            BankCardItems(),
        ]
          
      )
    );
  }
}




class BankCardItems extends StatelessWidget {
  const BankCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          BankItems(),
          Divider(),
          Expanded(
            child:CardItems(),
          ),
        ]
      ),
    );
  }
}

