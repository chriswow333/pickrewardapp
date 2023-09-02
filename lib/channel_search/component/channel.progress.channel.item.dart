import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    int type = channelViewModel.channelCategoryType;
    
    List<ChannelItemModel> channelItemModels = channelViewModel.getChannelsByChannelCategoryType(type);

    return Container(
      height:400,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          for(ChannelItemModel channelItemModel in channelItemModels ?? [])
            ChannelItem(channelItemModel:channelItemModel),
        ],
      ),
    );
  }
}



class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    
    bool selected = rewardSelectedViewModel.existSelectedChannelID(channelItemModel.id);

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        side:MaterialStatePropertyAll(
          selected ? 
          BorderSide(
            color:Palette.kToBlue[800]!,
            width: 2,
          ):null
        ),
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(0, 12, 0, 0),
        ),
      ),
      onPressed:(){
        
        rewardSelectedViewModel.channelID = channelItemModel.id;
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            ChannelItemIcon(image:channelItemModel.image),
            ChannelItemName(name:channelItemModel.name),
          ],
        ),
      ),
    );
  }
}



class ChannelItemIcon extends StatelessWidget {
  const ChannelItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:70,
        height:50,
      ),
    );
  }
}


class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        name,
        style: 
        TextStyle(
          color: Palette.kToBlue[900],
        ),
      )
    );
  }
}

