

import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/card/component/card.bank.dart';
import 'package:pickrewardapp/pages/card/component/card.items.dart';
import 'package:pickrewardapp/pages/card/component/card.search.item.dart';
import 'package:pickrewardapp/pages/card/viewmodel/card.search.dart';
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
          if(searchCardViewModel.searchCardFlag)
            const CardSearchItems(),
          if(!searchCardViewModel.searchCardFlag)
            const BankCardItems(),
        ]
      )
    );
  }
}


class BankCardItems extends StatelessWidget {
  const BankCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
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

