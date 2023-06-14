
import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/card.dart';
import 'package:pickrewardapp/reward/component/toggleswitch.dart';
import 'package:pickrewardapp/reward/viewmodel/toggleswitch.dart';
import 'package:provider/provider.dart';


class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:[
        ChangeNotifierProvider<ToggleSwitchViewModel>(create:(_)=>ToggleSwitchViewModel()),
      ],
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Banner(),
          Row(
            children:[
              Expanded(child:Container()),
              ToggleSwitch(),
            ]
          ),
          SizedBox(height:50), 
          // ChannelComponent(),
          CardComponent(),
        ]
      )
    );
  }
}






class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '找CoCo',
      style: TextStyle(
        fontSize: 20,
      ),
      
    );
  }
}


