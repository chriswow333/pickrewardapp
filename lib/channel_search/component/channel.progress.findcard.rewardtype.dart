import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';


class RewardTypeWidget extends StatelessWidget {
  const RewardTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
            padding: EdgeInsets.all(10),

      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          RewardTypeName(),
          SizedBox(height:5),
          RewardTypeItems(),
        ]
      )
    );
  }
}

class RewardTypeName extends StatelessWidget {
  const RewardTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('回饋方式',
      style:TextStyle(
        fontSize: 20,
        color:Palette.kToBlack[400],
      )
    );
  }
}

class RewardTypeItems extends StatelessWidget {
  const RewardTypeItems({super.key});

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
        splashFactory:NoSplash.splashFactory,
        padding:MaterialStatePropertyAll(EdgeInsets.all(0)),
      ),
      child:Row(
        children:[
          Checkbox(
            checkColor: Colors.white,
            fillColor: rewardSelectedViewModel.rewardType == rewardCashType ?
              MaterialStatePropertyAll(Palette.kToYellow[400]): MaterialStatePropertyAll(Palette.kToBlack[400]),
            value: rewardSelectedViewModel.rewardType == rewardCashType ,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardType = rewardCashType;
            },
          ),
          Text('現金回饋',
            style:TextStyle(
              fontSize: 20,
              color:Palette.kToBlack[400],
            ),
          ),
        ]
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
      style:const ButtonStyle(
        splashFactory:NoSplash.splashFactory,
        padding:MaterialStatePropertyAll(EdgeInsets.all(0)),
      ),
      child:Row(
        children:[
          Checkbox(
            checkColor: Colors.white,
            fillColor: rewardSelectedViewModel.rewardType == rewardPointType ?
              MaterialStatePropertyAll(Palette.kToYellow[400]): MaterialStatePropertyAll(Palette.kToBlack[400]),
            value: rewardSelectedViewModel.rewardType == rewardPointType ,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardType = rewardPointType;
            },
          ),
          Text('點數回饋',
            style:TextStyle(
              fontSize: 20,
              color:Palette.kToBlack[400],
            ),
          ),
        ]
      ),
    );
  }
}