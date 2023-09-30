

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    
    bool expanded = cardRewardViewModel.getCardRewardExpandStatus(cardRewardModel.id);
    
    return Container(
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        onPressed: (){  
          cardRewardViewModel.toggleCardReward(cardRewardModel.id);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Column(
          children:[
            Row(
              children:[
                CardRewardDuration(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                ActivityRewardType(),
                SizedBox(width:2),
              ]
            ),
            ActivityName(name:cardRewardModel.name),

            if(expanded)
              CardActivityDetails(cardRewardDescModels: cardRewardModel.cardRewardDesc,),
          ]
        )
      )
    );
  }
}




class ActivityName extends StatelessWidget {
  const ActivityName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
          fontSize: 20,
        ),
      ),
    );
  }
}




class ActivityRewardType extends StatelessWidget {
  const ActivityRewardType({super.key,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlue[600]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text('一般回饋',
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 12,
        ),
        maxLines: null,
      ),
    );
  }
}



class CardRewardDuration extends StatelessWidget {
  const CardRewardDuration({super.key, required this.startDate, required this.endDate});

  final DateTime startDate;
  final DateTime endDate;
  
  @override
  Widget build(BuildContext context) {
    
    DateTime now = DateTime.now();

    String durationStatus = "";

    if (startDate.isAfter(now)) {
      durationStatus = "尚未開始";
    }else if (endDate.isBefore(now)) {
      durationStatus = "已結束";
    }else {
      return Container();
    }
  
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToRed[600]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(durationStatus,
        style:TextStyle(
          color:Palette.kToRed[600],
          fontSize: 12,
        ),
        maxLines: null,
      ),
    );
  }
}


class CardActivityDetails extends StatelessWidget {
  const CardActivityDetails({super.key, required this.cardRewardDescModels});

  final List<CardRewardDescModel> cardRewardDescModels;
  @override
  Widget build(BuildContext context) {


  
    return Container(
      child:Column(
        children:[
          for (final c in cardRewardDescModels) 
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
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
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
          color:Palette.kToBlack[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}