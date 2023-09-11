import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.cost.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.costdate.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.pay.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.rewardtype.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';

class FindCardProgress extends StatelessWidget {
  const FindCardProgress({super.key});

  @override
  Widget build(BuildContext context) {

    PayItemViewModel payItemViewModel = Provider.of<PayItemViewModel>(context);
    payItemViewModel.fetchPays();

    return Container(
       height:MediaQuery.of(context).size.height - 240,
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          CostWidget(),
          
          SizedBox(height:20),

          PayWidget(),

          SizedBox(height:20),

          CostDate(),

          SizedBox(height:20),
          
          RewardTypeWidget(),

          SizedBox(height:40),
          
          SubmitEvaluateCard(),
        ],
      )
    );
  }
}



class SubmitEvaluateCard extends StatelessWidget {
  const SubmitEvaluateCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context);
    ChannelProgressViewModel channelProgressViewModel = Provider.of<ChannelProgressViewModel>(context);

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
            channelProgressViewModel.progress = ChannelProgressEnum.FindResult;

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

