

import 'package:flutter/material.dart' hide Banner;
import 'package:pickrewardapp/cardreward/component/cardreward.header.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';
import 'package:provider/provider.dart';




class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key, required this.cardHeaderItemModel});

  final CardHeaderItemModel cardHeaderItemModel;
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:SafeArea(
        child:Center(
          child:LayoutBuilder(
            builder:(context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
              if (screenWidth > tabletWidthThreshold) {
                return Container(
                  width: tabletWidthThreshold,
                  child: CardContentPage(cardHeaderItemModel:cardHeaderItemModel),
                );
              } else {
                // 屏幕较小，不限制应用宽度
                return CardContentPage(cardHeaderItemModel:cardHeaderItemModel);
              }
            },
          )
        )
      )
      ,
    );
  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key, required this.cardHeaderItemModel});
  final CardHeaderItemModel cardHeaderItemModel;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardHeaderViewModel>(create:(_)=>CardHeaderViewModel(cardHeaderItemModel)),
            ChangeNotifierProvider<CardRewardViewModel>(create:(_)=>CardRewardViewModel(cardHeaderItemModel.id)),
            ChangeNotifierProvider<EvaluationDetailToggleViewModel>(create:(_)=>EvaluationDetailToggleViewModel()),
            ChangeNotifierProvider<EvaluationViewModel>(create:(_)=>EvaluationViewModel()),
            ChangeNotifierProvider<EvaluationSelectedViewModel>(create:(_)=>EvaluationSelectedViewModel()), 
            ChangeNotifierProvider<EvaluationEventResultRespViewModel>(create:(_)=>EvaluationEventResultRespViewModel()),
            ChangeNotifierProvider<CardRewardTabViewModel>(create:(_)=>CardRewardTabViewModel()),
          ],
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height:10),
              CardHeader(),
              Divider(),
              CarTab(),
              Expanded(
                child:CardRewardComponent(),
              ),
              
            ]
          ),
        )
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




