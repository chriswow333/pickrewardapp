
import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/channel.dart';
import 'package:pickrewardapp/reward/component/toggleswitch.component.dart';


class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Banner(),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              ToggleSwitch(),
            ]
          ),
          SizedBox(height:50), 
        ChannelComponent(),
      ]
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


