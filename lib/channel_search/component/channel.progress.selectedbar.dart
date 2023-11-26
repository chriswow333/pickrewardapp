


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
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
    }else if (channelProgressSelectedPage.page == ChannelProgressPage.criteria){
      return CriteriaPageBar(controller: controller,);
    }

    return Container();
  }
}


class CriteriaPageBar extends StatelessWidget {
  const CriteriaPageBar({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context,listen:false);

    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children:[
              InkWell(
                onTap:(){
                  criteriaViewModel.resetCriteriaPage();
                },
                child:Icon(
                  Icons.cancel_outlined,
                ),
              ),
              SizedBox(width:5),
              Text('清除已選條件')
            ]
          ),
            
          SizedBox(width:10),
          Container(
            decoration: BoxDecoration(
              color: Palette.kToBlack[600],
              borderRadius:BorderRadius.all(Radius.circular(12.0)),
            ),
            padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
            child:InkWell(
              onTap:(){
                
                cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);

                FocusScope.of(context).unfocus();
                controller.animateToPage(
                  ChannelProgressPage.result, 
                  duration: Duration(milliseconds: 150), 
                  curve: Curves.linear
                );
                
              },
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 16,
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

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    int channelIDLength = criteriaViewModel.getChannelIDs().length;
    int labelLength = criteriaViewModel.channelLabels.length;
    
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
                        criteriaViewModel.resetChannelAndChannelLabels();
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
              borderRadius:BorderRadius.all(Radius.circular(12.0)),
            ),
            padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
            child:InkWell(
              onTap:(){
                if(channelSelected){
                  FocusScope.of(context).unfocus();
                  controller.animateToPage(
                    ChannelProgressPage.criteria, 
                    duration: Duration(milliseconds: 150), 
                    curve: Curves.linear
                  );
                }
              },
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 16,
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
