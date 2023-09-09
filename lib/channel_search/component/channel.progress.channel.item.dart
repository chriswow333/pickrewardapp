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
      height:MediaQuery.of(context).size.height - 373,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 15.0,  
        mainAxisSpacing: 15.0,
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

    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      border:selected? Border.all(
        color:Palette.kToBlue[800]!,
        width: 1.5,
      ):null,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 0.5)
          ),
        ],
      ),
      child:TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
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
          padding: EdgeInsets.only(left:2, right:2),
          child:Column(
            children:[
              ChannelItemIcon(image:channelItemModel.image),
              ChannelItemName(name:channelItemModel.name),
            ],
          ),
        ),
      )
    );
    ;
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
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}

