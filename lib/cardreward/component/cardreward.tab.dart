



import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CarTab extends StatelessWidget {
  const CarTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      child:Row(
        children:[
          TextButton(
            onPressed: (){
              // cardRewardSelectedViewModel.backToItems();
            },
            child:Text('卡片回饋',
              style:TextStyle(
                color:Palette.kToBlack[900],
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child:Text('點我辦卡',
              style:TextStyle(
                color:Palette.kToBlack[900],
              ),
            ),
          ),
        ]
      )
    );
  }
}
