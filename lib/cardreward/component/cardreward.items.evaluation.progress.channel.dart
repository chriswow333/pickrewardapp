

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class EvaluationProgressChannel extends StatelessWidget {
  const EvaluationProgressChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return ChannelItemGroups();
  }
}


class ChannelItemGroups extends StatelessWidget {
  const ChannelItemGroups({super.key});

  @override
  Widget build(BuildContext context) {
    
    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if(evaluationResp == null)return Container();


    Map<int, ChannelCategoryType> channelCategories = {};
    for(ChannelCategoryType category in evaluationResp.channelCategoryTypes){
      channelCategories[category.categoryType] = category;
    }


    Map<int, List<ChannelEvaluationResp_Channel>> allChannels = {};
    for (ChannelEvaluationResp channelEvaluationResp in evaluationResp.channelEvaluationResps){
      allChannels[channelEvaluationResp.channelCategoryType] = [];

      for(ChannelEvaluationResp_Channel channel in channelEvaluationResp.matches){
        allChannels[channelEvaluationResp.channelCategoryType]!.add(channel);
      }
    }

    return Wrap(
      runSpacing: 25,
      children:[
        LabelItemGroup(),
        for(int c in allChannels.keys) 
          if (channelCategories[c] != null && allChannels[c] != null)
          ChannelItemGroup(channelCategoryType:channelCategories[c]!, channels:allChannels[c]!),
      ]
    );
  }
}


class ChannelItemGroup extends StatelessWidget {
  const ChannelItemGroup({super.key, required this.channelCategoryType,  required this.channels});
  
  final ChannelCategoryType channelCategoryType;
  final List<ChannelEvaluationResp_Channel> channels;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          ChannelItemGroupName(name:channelCategoryType.name),
          SizedBox(height:10),
          ChannelItems(channels: channels),
        ]
      )
    );
  }
}

class ChannelItemGroupName extends StatelessWidget {
  const ChannelItemGroupName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,
      style:TextStyle(
        color: Palette.kToBlack[600],
        fontSize: 18,
      ),
    );
  }
}

class ChannelItems extends StatelessWidget {

  const ChannelItems({super.key, required this.channels});

  final List<ChannelEvaluationResp_Channel> channels;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:GridView.count(  
        shrinkWrap:true,
        physics:NeverScrollableScrollPhysics(),
        crossAxisCount: 4,  
        crossAxisSpacing: 15.0,  
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.zero,  
        children:[
          for (ChannelEvaluationResp_Channel c in channels) 
            ChannelItem(channel: c,),
        ],
      ),
    );
  }
}




class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channel});
  
  final ChannelEvaluationResp_Channel channel;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);

    bool selected = evaluationSelectedViewModel.hasChannlID(channel.id);

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed:(){
        evaluationSelectedViewModel.setChannelID(channel.id);
      },

      child:Stack(
        children:[
          Container(
            alignment: Alignment.center,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                ChannelItemIcon(image: channel.image,),
                ChannelItemName(name:channel.name),
              ],
            ),
          ),
          
          if(selected)
            Image.asset(
              'images/logo.png',
              width: 25,
              height: 25,
            ),
            // Container(
            //   alignment: Alignment.topLeft,
            //   child: Icon(
            //     Icons.check_circle_outlined,
            //     color:Palette.kToOrange[600],
            //     size:25,
            //   ),
            // ),
        ]
      )
      
      
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
      child:Text(name,
        style:TextStyle(
          color: Palette.kToBlack[600],
          // fontize: 14,
        ),
      )
    );
  }
}




class LabelItemGroup extends StatelessWidget {
  const LabelItemGroup({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if(evaluationResp == null ||evaluationResp.labelEvaluationResp.matches.isEmpty )return Container();


    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          LabelItemGroupName(),
          SizedBox(height:10),
          LabelItems(),
        ]
      )
    );
  }
}

class LabelItemGroupName extends StatelessWidget {
  const LabelItemGroupName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('通路總覽',
      style: TextStyle(
        color:Palette.kToBlack[600],
        fontSize: 18,
      ),
      
    );
  }
}

class LabelItems extends StatelessWidget {
  const LabelItems({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if(evaluationResp == null)return Container();

    LabelEvaluationResp labelEvaluationResp = evaluationResp.labelEvaluationResp;
    List<LabelEvaluationResp_Label> labels = labelEvaluationResp.matches;

    return Container(
      child:GridView.count(  
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          for (LabelEvaluationResp_Label l in labels) 
            LabelItem(label: l,)
        ],
      ),
    );
  }
}


class LabelItem extends StatelessWidget {
  const LabelItem({super.key, required this.label});
  
  final LabelEvaluationResp_Label label;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    bool selected = evaluationSelectedViewModel.hasLabel(label.labelType);
    return Container(
      alignment: Alignment.center,
      child:TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
        ),
        onPressed:(){
          evaluationSelectedViewModel.setLabel(label.labelType);
        },
        child:Stack(
          children:[
            Container(
              alignment: Alignment.center,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  LabelItemIcon(labelType:label.labelType),
                  LabelItemName(name:label.labelName),
                ],
              ),
            ),
            if(selected)
              Image.asset(
                'images/logo.png',
                width:25,
                height:25,
              ),
          ]
        )
        
      )
    );
    ;
  }
}


class LabelItemName extends StatelessWidget {
  const LabelItemName({super.key, required this.name,});
  final String name;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        name,
        style: TextStyle(
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}


class LabelItemIcon extends StatelessWidget {
  const LabelItemIcon({super.key, required this.labelType,});
  
  final int labelType;
  
  @override
  Widget build(BuildContext context) {


    IconData iconData = Icons.filter_none;
    switch (labelType) {
      case 0:
        iconData = Icons.horizontal_split_outlined;
        break;
      case 1:
        iconData = Icons.home_outlined;
        break;
      case 2:
        iconData = Icons.airplane_ticket_outlined;
        break;
    }

    return Container(
      child:Icon(
        color:Palette.kToBlack[600],
        size:40,
        iconData,
      )
    );
  }
}

