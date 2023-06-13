


import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/channel.items.component.dart';
import 'package:pickrewardapp/reward/component/channel.progress.component.dart';
import 'package:pickrewardapp/reward/component/channel.searchbar.component.dart';
import 'package:pickrewardapp/reward/component/channel.shopstore.component.dart';
import 'package:pickrewardapp/reward/component/toggleswitch.component.dart';

class ChannelComponent extends StatelessWidget {
  const ChannelComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              ToggleSwitch(),
            ]
          ),
          SizedBox(height:50), 
          RewardProgressBar(),
          SizedBox(height:20), 
          SearchChannelBar(),
          SizedBox(height:20), 
          ChannelItems(),
          SizedBox(height:20), 
          ShopStores(),
        ]
      ),
    );
  }
}