import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.selectedchannel.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.cost.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.pay.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.rewardtype.dart';
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
      child:SingleChildScrollView(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SelectedChannelResult(),
          SizedBox(height:20),
          CostWidget(),
          SizedBox(height:20),
          PayWidget(),
          SizedBox(height:20),
          RewardTypeWidget(),
          SizedBox(height:40),
          SubmitEvaluateCard(controller:controller),
        ],
      )
      ),
      
    );
  }
}



class SubmitEvaluateCard extends StatelessWidget {
  const SubmitEvaluateCard({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context,listen:false);
    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context,listen:false);

    return Row(
      // decoration: BoxDecoration(
      //   border:Border.all(),
      // ),
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton(
          style: ButtonStyle(
            padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:5, bottom:5)),
            shape:MaterialStatePropertyAll(RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) )),
            backgroundColor: MaterialStatePropertyAll(Palette.kToBlue[600]),
          ),
          onPressed: (){
            controller.jumpToPage(ChannelProgressPage.result);
            cardRewardEventResultsViewModel.evaluateCardRewardsEventResult(rewardSelectedViewModel);
          },
          child:Text('送出選卡',
            style: TextStyle(
              fontSize: 25,
              color:Palette.kToBlue[50],
            ),
          ),
        )
      ],
    );
  }
}

