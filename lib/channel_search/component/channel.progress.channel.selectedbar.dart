

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
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

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    if(channelProgressSelectedPage.page == ChannelProgressPage.channel){
      return ChannelPageBar(controller: controller,);
    }else if (channelProgressSelectedPage.page == ChannelProgressPage.findCard){
      return FindCardPageBar(controller: controller,);
    }

    return Container();
  }
}


class FindCardPageBar extends StatelessWidget {
  const FindCardPageBar({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context,listen:false);

    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          InkWell(
            onTap:(){
            },
            child:Row(
              children:[
                  
                Icon(
                  Icons.restore,
                ),
                SizedBox(width:5),
                Text('重置預設條件')
              ]
            )
          ),
            
            

          SizedBox(width:10),
          Container(
            decoration: BoxDecoration(
              color: Palette.kToBlack[600],
              borderRadius:BorderRadius.all(Radius.circular(10.0)),
            ),
            padding: const EdgeInsets.only(left:10, right:10, top:5, bottom: 5),
            child:InkWell(
              onTap:(){
                cardRewardEventResultsViewModel.evaluateCardRewardsEventResult(rewardSelectedViewModel);
                rewardSelectedViewModel.sendedFindCard = true;

                FocusScope.of(context).unfocus();
                controller.jumpToPage(ChannelProgressPage.result);
                
              },
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                ),
              )
            ),
          ),
        ]
      )
    );
  }
}



class ChannelPageBar extends StatelessWidget {
  const ChannelPageBar({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    
    bool channelSelected = channelIDLength + labelLength > 0;



    return Container(
      child:Row(
        children:[
          if(!channelSelected)
            Expanded(
              child:Container(
                child:Text('請選擇至少一個通路',
                  style: TextStyle(
                    fontSize: 16,
                    color:Palette.kToBlack[500],
                  ),
                )
              ),
            ),

          if(channelSelected)
            Expanded(
              child:Container(
                child:Row(
                  children:[
                    InkWell(
                      onTap:(){
                        rewardSelectedViewModel.resetChannelAndLabels();
                      },
                      child:const Icon(
                        Icons.cancel_outlined,
                      ),
                    ),
                    SizedBox(width:5),
                    Text('已選${channelIDLength + labelLength}個通路')
                  ]
                )
              ),
            ),
            
          Container(
            decoration: BoxDecoration(
              color: channelSelected?Palette.kToBlack[600]:Palette.kToBlack[50],
              borderRadius:BorderRadius.all(Radius.circular(10.0)),
            ),
            padding: const EdgeInsets.only(left:10, right:10, top:5, bottom: 5),
            child:InkWell(
              onTap:(){
                FocusScope.of(context).unfocus();
                controller.jumpToPage(ChannelProgressPage.findCard);
              },
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                ),
              )
            ),
          ),
        ]
      )
    );
  }
}


// class SelectedLabelItem extends StatelessWidget {
//   const SelectedLabelItem({super.key, required this.labelID});
//   final int labelID;

//   @override
//   Widget build(BuildContext context) {

//     String labelName = LabelItemModel.getLabelName(labelID);
    
//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

//     return Container(
//       child:InkWell(
//         onTap: (){
//           rewardSelectedViewModel.labelIDs = labelID;
//         },
//         child:Text(labelName,
//           style: TextStyle(
//             color:Palette.kToBlack[600],
//             fontSize: 10,
//           ),
//         )
//       )
//     );
//   }
// }


// class SelectedChannelItem extends StatelessWidget {
//   const SelectedChannelItem({super.key, required this.channelItemModel});

//   final ChannelItemModel channelItemModel;
  
//   @override
//   Widget build(BuildContext context) {

//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

//     return Container(
//       padding:EdgeInsets.only(right:2,),
//       child:Center(
//         child:ClipOval(
//           child:InkWell(
//             onTap:(){
//               rewardSelectedViewModel.channelID = channelItemModel;
//             },
//             child:Image.memory(
//               gaplessPlayback: true,
//               base64Decode(channelItemModel.image), 
//               width:30,
//               height:30,
//               fit: BoxFit.contain,
//             ),
//           )
//         )
//       )
//     );
//   }
// }
