
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/component/card.dart';
import 'package:pickrewardapp/card/component/channel.dart';
import 'package:pickrewardapp/card/component/toggleswitch.dart';
import 'package:pickrewardapp/card/viewmodel/bank.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:pickrewardapp/card/viewmodel/channel.dart';
import 'package:pickrewardapp/card/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/card/viewmodel/pay.item.dart';
import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/card/viewmodel/toggleswitch.dart';



class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
        ChangeNotifierProvider<PayItemViewModel>(create:(_)=>PayItemViewModel()),

      ],
      child:CardReward(),
    );
  }
}


class CardReward extends StatelessWidget {
  const CardReward({super.key});

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


