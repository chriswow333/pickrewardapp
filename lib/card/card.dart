
import 'package:flutter/material.dart' hide Banner;
import 'package:pickrewardapp/card/viewmodel/card.search.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/component/card.dart';
import 'package:pickrewardapp/card/viewmodel/bank.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';
import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';


class CardSearchPage extends StatelessWidget {
  const CardSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   return  MultiProvider(
      providers:[
        ChangeNotifierProvider<BankViewModel>(create:(_)=>BankViewModel()),
        ChangeNotifierProvider<CardItemViewModel>(create:(_)=>CardItemViewModel()),
        ChangeNotifierProvider<PayItemViewModel>(create:(_)=>PayItemViewModel()),
        ChangeNotifierProvider<CardRewardEventResultsViewModel>(create:(_)=>CardRewardEventResultsViewModel()),
        ChangeNotifierProvider<SearchCardViewModel>(create:(_)=>SearchCardViewModel()),
        
      ],
      child:CardComponent(),
    );
  }
}

