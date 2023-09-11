

import 'package:flutter/material.dart' hide Banner;
import 'package:pickrewardapp/cardreward/component/cardreward.header.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.dart';
import 'package:pickrewardapp/cardreward/component/activity.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:pickrewardapp/shared/config/global_padding.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:provider/provider.dart';




class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key, required this.cardItemModel});

  final CardItemModel cardItemModel;
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: GlobalPadding.global(),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardRewardSelectedViewModel>(create:(_)=>CardRewardSelectedViewModel()),
            ChangeNotifierProvider<EvaluationProgressViewModel>(create:(_)=>EvaluationProgressViewModel()),
            ChangeNotifierProvider<CardViewModel>(create:(_)=>CardViewModel(cardItemModel)),
            ChangeNotifierProvider<CardRewardViewModel>(create:(_)=>CardRewardViewModel(cardItemModel.id)),
            ChangeNotifierProvider<EvaluationDetailToggleViewModel>(create:(_)=>EvaluationDetailToggleViewModel()),
          ],
          child:CardContentPage(),
        )
      ),
    );
  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:10),
          CardHeader(),
          Divider(),
          CarTab(),
          CardRewardComponent(),
        ]
      );
  }
}



class CardRewardComponent extends StatelessWidget {
  const CardRewardComponent({super.key});

  @override
  Widget build(BuildContext context) {
  
    CardRewardSelectedViewModel cardRewardSelectedViewModel = Provider.of<CardRewardSelectedViewModel>(context);

    return Expanded(
      child:SingleChildScrollView(
        child:Column(
          children:[
            if(cardRewardSelectedViewModel.isShowItemList())
              RewardItems(),
             
             if(!cardRewardSelectedViewModel.isShowItemList() 
                && cardRewardSelectedViewModel.cardRewardType() == 0)
              Activity(),

            if(!cardRewardSelectedViewModel.isShowItemList() 
                && cardRewardSelectedViewModel.cardRewardType() == 1)
              Evaluation(),
           
          ]
        ),
      ),
    );
  }
}




