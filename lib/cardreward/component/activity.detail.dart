

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:provider/provider.dart';

class CardActivityDetails extends StatelessWidget {
  const CardActivityDetails({super.key});

  @override
  Widget build(BuildContext context) {


    CardRewardSelectedViewModel cardRewardSelectedViewModel = Provider.of<CardRewardSelectedViewModel>(context);

    CardRewardModel? cardRewardModel = cardRewardSelectedViewModel.getSelectedCardRewardModel();

    if(cardRewardModel == null) return Container();
  


    return Container(
      child:Column(
        children:[
          for (final c in cardRewardModel.cardRewardDesc) 
            CardActivityDetail(cardRewardDescModel: c,),
        ],
      ),
    );
  }
}

class CardActivityDetail extends StatelessWidget {
  const CardActivityDetail({super.key, required this.cardRewardDescModel});

  final CardRewardDescModel cardRewardDescModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardActivityDetailName(name:cardRewardDescModel.name),
          CardActivityDetailDescItems(desc:cardRewardDescModel.desc),
        ]
      ),
    );
  }
}

class CardActivityDetailName extends StatelessWidget {
  const CardActivityDetailName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('國內平日消費滿NT\$９萬享居家清潔服務一次，達NT\$18萬享2次(每年上限２次)',
        style:TextStyle(
          color:Colors.cyan[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}


class CardActivityDetailDescItems extends StatelessWidget {
  const CardActivityDetailDescItems({super.key, required this.desc});
  final List<String> desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:10, left:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for (final d in desc) 
          CardActivityDetailDescItem(desc:d,),
        ]
      )
    );
  }
}


class CardActivityDetailDescItem extends StatelessWidget {
  const CardActivityDetailDescItem({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.only(top:5),
      child:Text(desc,
        style:TextStyle(
          color:Colors.cyan[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}