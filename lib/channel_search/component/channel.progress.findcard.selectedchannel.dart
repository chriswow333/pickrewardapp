

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SelectedChannelResult extends StatelessWidget {
  const SelectedChannelResult({super.key});

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('已選通路',
            style:TextStyle(
              fontSize: 18,
              color: Palette.kToBlack[600],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children:[
              Expanded(
                child:SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(
                    children:[
                      for(ChannelItemModel channelItemModel in rewardSelectedViewModel.channelItemModels)
                        SelectedChannelItem(channelItemModel: channelItemModel,),
                    ]
                  )
                )
              )
            ]
          ),
          SizedBox(height:10), 
        ]
      )
      
    );
  }
}




class SelectedChannelItem extends StatelessWidget {
  const SelectedChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left:2, right:2),
      child:Stack(
        children:[
          Container(
            alignment: Alignment.center,
            child:SelectedChannelItemIcon(image:channelItemModel.image),
          ),
        ]
      )
    );
  }
}

class SelectedChannelItemIcon extends StatelessWidget {
  const SelectedChannelItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:40,
        height:30,
      ),
    );
  }
}