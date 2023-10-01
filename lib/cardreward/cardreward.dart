

import 'package:flutter/material.dart' hide Banner;
import 'package:pickrewardapp/cardreward/component/cardreward.header.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
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
        padding: GlobalPadding.global(),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardViewModel>(create:(_)=>CardViewModel(cardItemModel)),
            ChangeNotifierProvider<CardRewardViewModel>(create:(_)=>CardRewardViewModel(cardItemModel.id)),
            ChangeNotifierProvider<EvaluationDetailToggleViewModel>(create:(_)=>EvaluationDetailToggleViewModel()),
            
            ChangeNotifierProvider<EvaluationViewModel>(create:(_)=>EvaluationViewModel()), // TODO
            // ChangeNotifierProvider<EvaluationChannelCategoryViewModel>(create:(_)=>EvaluationChannelCategoryViewModel()),
            ChangeNotifierProvider<EvaluationSelectedViewModel>(create:(_)=>EvaluationSelectedViewModel()), // TODO
            ChangeNotifierProvider<EvaluationEventResultRespViewModel>(create:(_)=>EvaluationEventResultRespViewModel()),
       
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
          Expanded(
            child:CardRewardComponent(),
          )
          
        ]
      );
  }
}



class CardRewardComponent extends StatelessWidget {
  const CardRewardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RewardItems(),
    );
    
   
  }
}




