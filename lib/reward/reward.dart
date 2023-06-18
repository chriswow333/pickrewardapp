
import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/card.dart';
import 'package:pickrewardapp/reward/component/channel.dart';
import 'package:pickrewardapp/reward/component/toggleswitch.dart';
import 'package:pickrewardapp/reward/viewmodel/bank.dart';
import 'package:pickrewardapp/reward/viewmodel/card.item.dart';
import 'package:pickrewardapp/reward/viewmodel/channel.dart';
import 'package:pickrewardapp/reward/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/reward/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/reward/viewmodel/toggleswitch.dart';
import 'package:provider/provider.dart';


class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:[
        ChangeNotifierProvider<BankViewModel>(create:(_)=>BankViewModel()),
        ChangeNotifierProvider<ToggleSwitchViewModel>(create:(_)=>ToggleSwitchViewModel()),
        ChangeNotifierProvider<ChannelProgressViewModel>(create:(_)=>ChannelProgressViewModel()),


        ChangeNotifierProvider<ChannelViewModel>(create:(_)=>ChannelViewModel()),
        ChangeNotifierProvider<CardItemViewModel>(create:(_)=>CardItemViewModel()),
        ChangeNotifierProvider<RewardSelectedViewModel>(create:(_)=>RewardSelectedViewModel()),
      ],
      child:RewardContent(),
    );
  }
}


class RewardContent extends StatelessWidget {
  const RewardContent({super.key});

  @override
  Widget build(BuildContext context) {
    ToggleSwitchViewModel toggleSwitchViewModel = Provider.of<ToggleSwitchViewModel>(context);
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    channelViewModel.fetchChannelCategoryTypeModels();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Banner(),
          Row( 
            children:[
              Expanded(child:Container()),
              ToggleSwitch(),
            ]
          ),
          SizedBox(height:50), 
          if (toggleSwitchViewModel.type == ToggleTypeEnum.Channel)
            ChannelComponent(),
          if (toggleSwitchViewModel.type == ToggleTypeEnum.Card)
            CardComponent(),
        ]
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


