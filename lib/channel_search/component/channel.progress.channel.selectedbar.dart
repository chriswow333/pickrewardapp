

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/model/label.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SelectedChannelResult extends StatelessWidget {
  const SelectedChannelResult({super.key, required this.controller});
  final PageController controller;


  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    
    int leftPage = channelProgressSelectedPage.page - 1;
    int rightPage = channelProgressSelectedPage.page + 1;


    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool channelSelected = channelIDLength + labelLength > 0;


    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context,listen:false);

    return Container(
      height: 40,
      child:Row(
        children:[
          if(leftPage >= 0)
              Container(
                child:InkWell(
                  onTap:(){
                    FocusScope.of(context).unfocus();
                    controller.jumpToPage(leftPage);
                  },
                  child:Icon(
                    Icons.arrow_back_ios_new_sharp,
                  )
                ),
              ),
          if(!channelSelected && channelProgressSelectedPage.page != ChannelProgressPage.result)
            Container(
              child:Text('選擇你的消費通路',
                style: TextStyle(
                  fontSize: 20,
                  color:Palette.kToBlack[500],
                  fontWeight: FontWeight.bold,
                ),
              )
            ),

          if(channelProgressSelectedPage.page != ChannelProgressPage.result)
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
          if(channelProgressSelectedPage.page == ChannelProgressPage.result)
            const Expanded(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('查詢高回饋信用卡結果',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )  
                ]
              ),
            ),
            

          SizedBox(width:10),
          if(rightPage <= ChannelProgressPage.result && channelSelected)
            Container(
              decoration: BoxDecoration(
                color: Palette.kToBlack[600],
                borderRadius:BorderRadius.all(Radius.circular(10.0)),
              ),
              padding: const EdgeInsets.all(5),
              child:InkWell(
                onTap:(){

                  if(channelProgressSelectedPage.page == ChannelProgressPage.findCard){
                    cardRewardEventResultsViewModel.evaluateCardRewardsEventResult(rewardSelectedViewModel);
                    rewardSelectedViewModel.sendedFindCard = true;
                  }

                  if(channelSelected){
                    FocusScope.of(context).unfocus();
                    controller.jumpToPage(rightPage);
                  }
                  
                },
                child:Text('下一步',
                  style: TextStyle(
                    color:Palette.kToBlack[0],
                  ),
                )
              ),
            ),
        ]
      ),
    );
  }
}


class SelectedLabelItem extends StatelessWidget {
  const SelectedLabelItem({super.key, required this.labelID});
  final int labelID;

  @override
  Widget build(BuildContext context) {

    String labelName = LabelItemModel.getLabelName(labelID);
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return Container(
      child:InkWell(
        onTap: (){
          rewardSelectedViewModel.labelIDs = labelID;
        },
        child:Text(labelName,
          style: TextStyle(
            color:Palette.kToBlack[600],
            fontSize: 10,
          ),
        )
      )
    );
  }
}


class SelectedChannelItem extends StatelessWidget {
  const SelectedChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;
  
  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    return Container(
      padding:EdgeInsets.only(right:2,),
      child:Center(
        child:ClipOval(
          child:InkWell(
            onTap:(){
              rewardSelectedViewModel.channelID = channelItemModel;
            },
            child:Image.memory(
              gaplessPlayback: true,
              base64Decode(channelItemModel.image), 
              width:30,
              height:30,
              fit: BoxFit.contain,
            ),
          )
        )
      )
    );
  }
}
