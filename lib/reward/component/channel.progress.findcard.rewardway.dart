




import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/viewmodel/reward.selected.dart';
import 'package:provider/provider.dart';

class RewardWayName extends StatelessWidget {
  const RewardWayName({super.key});

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

class RewardWayItems extends StatelessWidget {
  const RewardWayItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CashWay(),
        SizedBox(width:20),
        PointWay(),
      ]
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class CashWay extends StatelessWidget {
  const CashWay({super.key});

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return TextButton(
      onPressed: (){
        rewardSelectedViewModel.rewardWay = RewardWayEnum.CASH;
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
            value: rewardSelectedViewModel.rewardWay == RewardWayEnum.CASH,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardWay = RewardWayEnum.CASH;
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



class PointWay extends StatelessWidget {
  const PointWay({super.key});

  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    return TextButton(
      onPressed: (){
        rewardSelectedViewModel.rewardWay = RewardWayEnum.POINT;
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
            value: rewardSelectedViewModel.rewardWay == RewardWayEnum.POINT,
            onChanged: (bool? value) {
              rewardSelectedViewModel.rewardWay = RewardWayEnum.POINT;
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