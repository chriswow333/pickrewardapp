

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.header.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.dart';
import 'package:pickrewardapp/cardreward/component/activity.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:provider/provider.dart';


class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:50),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardRewardToggleViewModel>(create:(_)=>CardRewardToggleViewModel()),
            ChangeNotifierProvider<EvaluationProgressViewModel>(create:(_)=>EvaluationProgressViewModel()),
            
          ],
          child:CardContentPage(),
        )
      ),
    );
  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Banner(),
          SizedBox(height:20),
          CardHeader(),
          Divider(),
          CarTab(),
          CardRewardInner(),
        ]
      );
  }
}



class CardRewardInner extends StatelessWidget {
  const CardRewardInner({super.key});

  @override
  Widget build(BuildContext context) {
  
    CardRewardToggleViewModel cardRewardInnerViewModel = Provider.of<CardRewardToggleViewModel>(context);

    return Expanded(
      child:SingleChildScrollView(
        child:Column(
          children:[
            if(cardRewardInnerViewModel.isShowItemList())
              RewardItems(),
            if(!cardRewardInnerViewModel.isShowItemList() 
                && cardRewardInnerViewModel.rewardType() == 0)
              Evaluation(),
            if(!cardRewardInnerViewModel.isShowItemList() 
                && cardRewardInnerViewModel.rewardType() == 1)
              Activity(),
          ]
        ),
      ),
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


