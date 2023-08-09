import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';


class RewardTypeName extends StatelessWidget {
  const RewardTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('回饋方式',
      style:TextStyle(
        fontSize: 20,
        color:Colors.cyan[900],
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

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return TextButton(
      onPressed: (){
        rewardSelectedViewModel.rewardType = RewardTypeEnum.CASH;
      },
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
        padding:MaterialStatePropertyAll(EdgeInsets.all(0)),
      ),
      child:Row(
        children:[
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStatePropertyAll(Colors.cyan[900]),
            value: rewardSelectedViewModel.isSelectedRewardType(RewardTypeEnum.CASH) ,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardType = RewardTypeEnum.CASH;
            },
          ),
          Text('現金回饋',
            style:TextStyle(
              fontSize: 20,
              color:Colors.cyan[900],
            ),
          ),
        ]
      ),
    );
  }
}



class PointType extends StatelessWidget {
  const PointType({super.key});

  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    return TextButton(

      onPressed: (){
        rewardSelectedViewModel.rewardType = RewardTypeEnum.POINT;
      },
      style:const ButtonStyle(
        splashFactory:NoSplash.splashFactory,
        padding:MaterialStatePropertyAll(EdgeInsets.all(0)),
      ),
      child:Row(
        children:[
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStatePropertyAll(Colors.cyan[900]),
            value: rewardSelectedViewModel.isSelectedRewardType(RewardTypeEnum.POINT) ,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardType = RewardTypeEnum.POINT;
            },
          ),
          Text('點數回饋',
            style:TextStyle(
              fontSize: 20,
              color:Colors.cyan[900],
            ),
          ),
        ]
      ),
    );
  }
}