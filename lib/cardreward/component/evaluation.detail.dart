



import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.detail.dart';
import 'package:provider/provider.dart';

class CardEvaluationDetails extends StatelessWidget {
  const CardEvaluationDetails({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    List<CardRewardDescModel> cardRewardDesc = cardRewardModel.cardRewardDesc;

    EvaluationDetailToggleViewModel evaluationDetailToggleViewModel = Provider.of<EvaluationDetailToggleViewModel>(context);
    return Container(
      padding:const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationDetailTitle(),
          if (evaluationDetailToggleViewModel.get())
            for (final d in cardRewardDesc)  
              CardEvaluationDetail(cardRewardDescModel: d,),
        ],
      )
    );
  }
}


class CardEvaluationDetail extends StatelessWidget {
  const CardEvaluationDetail({super.key, required this.cardRewardDescModel});
  
  final CardRewardDescModel cardRewardDescModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardEvaluationDetailName(name:cardRewardDescModel.name),
          CardEvaluationDetailDescItems(desc:cardRewardDescModel.desc),
        ],
      ),
    );
  }
}



class CardEvaluationDetailName extends StatelessWidget {
  const CardEvaluationDetailName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 16,
        ),
      )
    );
  }
}

class CardEvaluationDetailDescItems extends StatelessWidget {
  const CardEvaluationDetailDescItems({super.key, required this.desc});
  final List<String> desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:10, top:5,),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(final d in desc) 
            CardEvaluationDetailDescItem(desc: d,),
        ]
      ),
    );
  }
}


class CardEvaluationDetailDescItem extends StatelessWidget {
  const CardEvaluationDetailDescItem({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(desc,
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}

class EvaluationDetailTitle extends StatelessWidget {
  const EvaluationDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationDetailToggleViewModel evaluationDetailToggleViewModel = Provider.of<EvaluationDetailToggleViewModel>(context);
    bool expanded = evaluationDetailToggleViewModel.get();
    IconData icon = expanded? Icons.arrow_drop_up_rounded:Icons.arrow_drop_down_rounded;
    return Container(
      child:Row(
        children:[
          Text('詳細說明',
            style:TextStyle(
              color:Colors.cyan[900],
              fontSize: 18,
            ),
          ),
          TextButton(
            onPressed: (){
              evaluationDetailToggleViewModel.toggle();
            },
            child:Icon(icon,
            )
          ),
        ]
      )
    );
    
  }
}