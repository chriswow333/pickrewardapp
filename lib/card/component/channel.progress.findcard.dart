import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/card/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/component/channel.progress.findcard.cost.dart';
import 'package:pickrewardapp/card/component/channel.progress.findcard.costdate.dart';
import 'package:pickrewardapp/card/component/channel.progress.findcard.pay.dart';
import 'package:pickrewardapp/card/component/channel.progress.findcard.rewardtype.dart';
import 'package:pickrewardapp/card/viewmodel/pay.item.dart';

class FindCardProgress extends StatelessWidget {
  const FindCardProgress({super.key});

  @override
  Widget build(BuildContext context) {

    PayItemViewModel payItemViewModel = Provider.of<PayItemViewModel>(context);
    payItemViewModel.fetchPays();

    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        CostName(),
        SizedBox(height:20),
        CostButtons(),
        
        SizedBox(height:20),

        PayName(),
        PayItems(),

        SizedBox(height:20),

        CostDate(),

        SizedBox(height:20),
        
        RewardTypeName(),
        RewardTypeItems(),

        SizedBox(height:40),
        
        SubmitEvaluateCard(),
      ],
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
            backgroundColor: MaterialStatePropertyAll(Colors.cyan[900]),
          ),
          onPressed: (){
            channelProgressViewModel.progress = ChannelProgressEnum.FindResult;

            cardRewardEventResultsViewModel.evaluateCardRewardsEventResult(rewardSelectedViewModel);

          },
          child:Text('送出選卡',
            style: TextStyle(
              fontSize: 25,
              color:Colors.cyan[50],
            ),
          ),
        )
      ],
    );
  }
}

