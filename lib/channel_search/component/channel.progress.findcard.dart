import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.selectedbar.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.cost.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.pay.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';

class FindCardProgress extends StatelessWidget {
  const FindCardProgress({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {

    PayItemViewModel payItemViewModel = Provider.of<PayItemViewModel>(context);
    payItemViewModel.fetchPays();

    return Column(
      children:[
        CardRewardMessage(),
        Expanded(
          child:SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height:20),
                CostWidget(),
                SizedBox(height:20),
                CardRewardTypeWidget(),
                SizedBox(height:20),
                PayWidget(),
                SizedBox(height:40),
              ],
            )
          ),
        )
      ]
      
    );
  }
}

class CardRewardMessage extends StatelessWidget {
  const CardRewardMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Text('還差一步! 請確認搜尋條件',
        style: TextStyle(
          fontSize: 25,
          color:Palette.kToBlack[500],
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}


