


import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/channel.progress.channel.dart';
import 'package:pickrewardapp/reward/component/channel.progress.findcard.dart';
import 'package:pickrewardapp/reward/component/channel.progress.dart';

class ChannelComponent extends StatelessWidget {
  const ChannelComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          
          RewardProgressBar(),
          SizedBox(height:20), 
          // Channel(),
          FindCard(),
        ]
      ),
    );
  }
}




