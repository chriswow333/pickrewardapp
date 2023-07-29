



import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:provider/provider.dart';

class CarTab extends StatelessWidget {
  const CarTab({super.key});

  @override
  Widget build(BuildContext context) {
    CardRewardToggleViewModel cardRewardInnerViewModel = Provider.of<CardRewardToggleViewModel>(context);

    return Container(
      child:Row(
        children:[
          TextButton(
            onPressed: (){
              cardRewardInnerViewModel.backToItems();
            },
            child:Text('卡片回饋',
              style:TextStyle(
                color:Colors.cyan[900],
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child:Text('點我辦卡',
              style:TextStyle(
                color:Colors.cyan[900],
              ),
            ),
          ),
        ]
      )
    );
  }
}
