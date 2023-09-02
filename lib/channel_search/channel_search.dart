

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/channel_search/component/channel.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';


class ChannelSearchPage extends StatelessWidget {
  const ChannelSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   return  MultiProvider(
      providers:[
        ChangeNotifierProvider<ChannelProgressViewModel>(create:(_)=>ChannelProgressViewModel()),
        ChangeNotifierProvider<ChannelViewModel>(create:(_)=>ChannelViewModel()),
        ChangeNotifierProvider<RewardSelectedViewModel>(create:(_)=>RewardSelectedViewModel()),
        ChangeNotifierProvider<PayItemViewModel>(create:(_)=>PayItemViewModel()),
        ChangeNotifierProvider<CardRewardEventResultsViewModel>(create:(_)=>CardRewardEventResultsViewModel()),
      ],
      child:ChannelComponent(),
    );
  }
}
