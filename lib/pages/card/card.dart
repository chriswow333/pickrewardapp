
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:pickrewardapp/pages/card/screen/card.dart';
import 'package:pickrewardapp/pages/card/viewmodel/card.search.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/eventresult.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/pages/card/viewmodel/bank.dart';
import 'package:pickrewardapp/pages/card/viewmodel/card.item.dart';


class CardSearchPage extends StatelessWidget {
  const CardSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   return  MultiProvider(
      providers:[
        ChangeNotifierProvider<BankViewModel>(create:(_)=>BankViewModel()),
        ChangeNotifierProvider<CardItemViewModel>(create:(_)=>CardItemViewModel()),
        ChangeNotifierProvider<CardEventResultsViewModel>(create:(_)=>CardEventResultsViewModel()),
        ChangeNotifierProvider<SearchCardViewModel>(create:(_)=>SearchCardViewModel()),
      ],
      child: const CardScreen(),
    );
  }
}


