

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/model/label.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SelectedChannelResult extends StatelessWidget {
  const SelectedChannelResult({super.key, required this.controller});
  final PageController controller;


  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool selected = channelIDLength + labelLength > 0;

    if(selected) {
      return Container(
        color:Palette.kToBlack[0]!,
        height:50,
        child:Container(
          child:Row(
            children:[
              Expanded(
                child:SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(
                    children:[
                      for(int labelID in rewardSelectedViewModel.getAllLabelIDs())
                        SelectedLabelItem(labelID: labelID,),
                      for(ChannelItemModel channelItemModel in rewardSelectedViewModel.channelItemModels)
                        SelectedChannelItem(channelItemModel: channelItemModel,),
                    ]
                  )
                )
              ),
              Container(
                padding: EdgeInsets.only(left:10,right:10),
                child:TextButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(
                      Palette.kToBlack[400]!,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius for the desired shape
                      ),
                    )
                  ),
                  onPressed: (){
                    FocusScope.of(context).unfocus();
                    controller.jumpToPage(ChannelProgressPage.findCard);
                  },
                  child:Text('下一步',
                     style: TextStyle(
                      color:Palette.kToBlack[0],
                     ),
                  ),
                ),
              )
            ]
          ),
          
        )
      );
    }
    return Container();
  }
}


class SelectedLabelItem extends StatelessWidget {
  const SelectedLabelItem({super.key, required this.labelID});
  final int labelID;

  @override
  Widget build(BuildContext context) {
    String labelName = LabelItemModel.getLabelName(labelID);
    
    return Container(
      padding: const EdgeInsets.only(right:2,),
      child:Text(labelName,
        style: TextStyle(
          color:Palette.kToBlack[600],
          fontSize: 10,
        ),
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
      padding:EdgeInsets.only(right:2,),
      child:SelectedChannelItemIcon(image:channelItemModel.image),
    );
  }
}

class SelectedChannelItemIcon extends StatelessWidget {
  const SelectedChannelItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:30,
        height:30,
        fit: BoxFit.contain,
      ),
    );
  }
}