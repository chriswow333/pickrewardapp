

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color:expanded ? Palette.kToBlack[50]! : Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color:expanded?null: Palette.kToBlue[50],
        boxShadow: expanded?null:[
          BoxShadow(
            color: Palette.kToBlack[200]!,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 1.0,
            // spreadRadius: 0.5,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            TextButton(
              style:const ButtonStyle(
                splashFactory:NoSplash.splashFactory,
              ),
              onPressed: (){
                cardRewardViewModel.toggleCardReward(cardRewardModel.id);
              },
              child:Wrap(
                runAlignment: WrapAlignment.start,
                runSpacing: 5,
                children:[
                  Row(
                    children:[
                      ActivityRewardType(),
                      SizedBox(width:5),
                      CardRewardDurationMessage(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                    ]
                  ),
                  CardRewardDuration(startDateTime: cardRewardModel.startDate, endDateTime: cardRewardModel.endDate,),
                  ActivityName(name:cardRewardModel.name),
                ]
              )
            ),
            if(expanded)
              CardActivityDetails(cardRewardDescModels: cardRewardModel.descriptions,),
          ]
        )
    );
  }
}





class CardRewardDuration extends StatelessWidget {
  const CardRewardDuration({super.key, required this.startDateTime, required this.endDateTime});

  final DateTime startDateTime;
  final DateTime endDateTime;
  
  @override
  Widget build(BuildContext context) {
    
    DateFormat formatter = DateFormat('yyyy/MM/dd');

    final startDate = formatter.format(startDateTime);
    final endDate =  formatter.format(endDateTime);
    
    return Container(
      child:Text('${startDate.toString()} - ${endDate.toString()}',
        style: TextStyle(
          color: Palette.kToBlack[200],
          fontSize: 12,
        ),
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
      decoration: BoxDecoration(
        // border: Border.all(
        //   color:Palette.kToBlue[600]!,
        //   width: 2,
        // ),
        // borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text('一般回饋',
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        maxLines: null,
      ),
    );
  }
}



class CardRewardDurationMessage extends StatelessWidget {
  const CardRewardDurationMessage({super.key, required this.startDate, required this.endDate});

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
          width: 1,
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

  final List<DescriptionModel> cardRewardDescModels;
  @override
  Widget build(BuildContext context) {
  
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Divider(
            color:Palette.kToBlack[50],
          ),
          SizedBox(height:5),
          CardActivityDetailTitle(),
          SizedBox(height:5),
          for (final c in cardRewardDescModels) 
            CardActivityDetail(cardRewardDescModel: c,),
        ],
      ),
    );
  }
}


class CardActivityDetailTitle extends StatelessWidget {
  const CardActivityDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('詳細說明',
        style:TextStyle(
          color:Palette.kToBlack[900],
          overflow: TextOverflow.clip,
          fontSize: 20,
        ),
      )
    );
  }
}

class CardActivityDetail extends StatelessWidget {
  const CardActivityDetail({super.key, required this.cardRewardDescModel});

  final DescriptionModel cardRewardDescModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          fontSize: 15,
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