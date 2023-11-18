import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';


class CardRewardTypeWidget extends StatelessWidget {
  const CardRewardTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
      ),
      padding: EdgeInsets.all(10),

      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:10),
          CardRewardTypeName(),
          SizedBox(height:10),
          CardRewardTypeItems(),
          SizedBox(height:10),
          Divider(thickness: 1,),
          SizedBox(height:10),
          CardRewardLabelName(),
          SizedBox(height:10),
          CardRewardLabelItems(),
        ]
      )
    );
  }
}



class CardRewardTypeName extends StatelessWidget {
  const CardRewardTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('信用卡回饋方式',
      style:TextStyle(
        fontSize: 20,
        color:Palette.kToBlack[400],
      )
    );
  }
}

class CardRewardTypeItems extends StatelessWidget {
  const CardRewardTypeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CashType(),
        SizedBox(width:20),
        PointType(),
      ]
    );
  }
}


class CashType extends StatelessWidget {
  const CashType({super.key});

  final int rewardCashType = 0;

  @override
  Widget build(BuildContext context) {
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return TextButton(
      onPressed: (){
        rewardSelectedViewModel.rewardType = rewardCashType;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side: MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: rewardSelectedViewModel.rewardType == rewardCashType ? 
              Palette.kToYellow[400]!:Palette.kToBlack[400]!,
          )
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
        animationDuration:Duration(microseconds: 0),
      ),
      child:Container(
        child:Text('現金回饋',
          style:TextStyle(
            fontSize: 16,
            color:Palette.kToBlack[400],
          ),
        ),
      ),
    );
  }
}



class PointType extends StatelessWidget {
  
  const PointType({super.key});

    final int rewardPointType = 1;


  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    
    return TextButton(
      onPressed: (){
        rewardSelectedViewModel.rewardType = rewardPointType;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side: MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: rewardSelectedViewModel.rewardType == rewardPointType ? 
              Palette.kToYellow[400]!:Palette.kToBlack[400]!,
          )
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
        animationDuration:Duration(microseconds: 0),
      ),
      child:Text('點數回饋',
        style:TextStyle(
          fontSize: 16,
          color:Palette.kToBlack[400],
        ),
      ),
    );
  }
}



class CardRewardLabel extends StatelessWidget {
  const CardRewardLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class CardRewardLabelName extends StatelessWidget {
  const CardRewardLabelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('信用卡任務篩選(可多選)',
      style:TextStyle(
        fontSize: 20,
        color:Palette.kToBlack[500],
      )
    );
  }
}


class CardRewardLabelItems extends StatelessWidget {
  const CardRewardLabelItems({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> cardRewardLabels = [
      '新戶','需登錄','限量','限定日'
    ];
    return Container(
      child:Wrap(
        spacing:10,
        runSpacing: 5,
        children:[
          for(int i = 0; i < cardRewardLabels.length; i++)
            CardRewardLabelItem(cardRewardLabel: cardRewardLabels[i],),
        ]
      )
    );
  }
}

class CardRewardLabelItem extends StatelessWidget {
  const CardRewardLabelItem({super.key, required this.cardRewardLabel});

  final String cardRewardLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        onPressed: (){

        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text(cardRewardLabel,
          style:TextStyle(
            // fontSize: 16,
            color:Palette.kToBlack[500],
          )
        )
      )
    );
  }
}