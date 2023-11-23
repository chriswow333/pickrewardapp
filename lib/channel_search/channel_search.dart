

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:pickrewardapp/channel_search/component/channel.dart';
import 'package:provider/provider.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';



class ChannelSearchPage extends StatelessWidget {
  const ChannelSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   return  MultiProvider(
      providers:[
        ChangeNotifierProvider<ChannelViewModel>(create:(_)=>ChannelViewModel()),
        ChangeNotifierProvider<CriteriaViewModel>(create:(_)=>CriteriaViewModel()),
        // ChangeNotifierProvider<PayItemViewModel>(create:(_)=>PayItemViewModel()),
        ChangeNotifierProvider<CardRewardEventResultsViewModel>(create:(_)=>CardRewardEventResultsViewModel()),
        ChangeNotifierProvider<ChannelProgressSelectedPage>(create:(_)=>ChannelProgressSelectedPage()),
        ChangeNotifierProvider<SearchChannelViewModel>(create:(_)=>SearchChannelViewModel()),
      ],
      child:ChannelComponent(),
    );
  }
}
