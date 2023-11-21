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

    return Container(
      padding: EdgeInsets.only(left:5, right:5),
      child:Column(
        children:[
          FindCardProgressTitle(controller: controller,),
          SizedBox(height:20),
          ChannelSelectedItems(),
          SizedBox(height:20),
          Expanded(
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CardRewardMessage(),
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
          ),
          const SizedBox(height: 20,),
          SizedBox(
            child:SelectedChannelResult(controller: controller,),
          )
        ]
      )
    );
  }
}

class FindCardProgressTitle extends StatelessWidget {
  
  const FindCardProgressTitle({super.key, required this.controller});
  
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Stack(
        children:[
          InkWell(
            onTap:(){
              controller.animateToPage(ChannelProgressPage.channel, 
                duration: const Duration(milliseconds: 200), 
                curve: Curves.linear
              );
            },
            child:const Icon(
              Icons.arrow_back_ios_new
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('查詢高回饋信用卡',
                style: TextStyle(
                  fontSize: 18,
                  color:Palette.kToBlack[500],
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ),
        ]
      )
    );
  }
}

class ChannelSelectedItems extends StatelessWidget {
  const ChannelSelectedItems({super.key});

  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    List<String> channelNames = rewardSelectedViewModel.channelItemModels.map((e) => e.name).toList();
    List<String> selectedNames = rewardSelectedViewModel.labels.map((e) => e.name).toList();
    selectedNames.addAll(channelNames);
    String names = selectedNames.join(",");
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color:Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(20),
      ),
      
      child:Row(
        children:[
          Container(
            padding: EdgeInsets.only(right:20),
            child:Text('已選通路',
              style:TextStyle(
                fontSize: 14,
              )
            ),
          ),
          // SizedBox(width:10),
          Expanded(
            child:Text(names,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ]
      )
    );
  }
}


class CardRewardMessage extends StatelessWidget {
  const CardRewardMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:20),
      child:Text('還差一步! 請確認搜尋條件',
        style: TextStyle(
          fontSize: 22,
          color:Palette.kToBlack[500],
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}


