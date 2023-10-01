

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
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
    EvaluationRespProto? resp = evaluationViewModel.get();
    if(resp == null)return Container();

    Map<int, List<ChannelProto>> allChannels = {};
    Map<int, ChannelCategoryTypeProto> channelCategories = {};
    for(ChannelCategoryTypeProto c in resp.channelCategoryTypes){
      allChannels[c.id] = [];
      channelCategories[c.id] = c;
    }

    for (ChannelEvaluationRespProto c in resp.channelEvaluationResps){
      for(ChannelProto ch in c.matches){
        if(allChannels.containsKey(ch.channelCategoryType)) {
          allChannels[ch.channelCategoryType]!.add(ch);
        }else {
          allChannels[ch.channelCategoryType] = [ch];
        }
      }
    }
    return Wrap(
      runSpacing: 25,
      children:[
        LabelItemGroup(),
        for(int c in allChannels.keys) 
          ChannelItemGroup(channelCategoryTypeProto:channelCategories[c]!, channelProtos:allChannels[c]!)
      ]
    );
  }
}


class ChannelItemGroup extends StatelessWidget {
  const ChannelItemGroup({super.key, required this.channelCategoryTypeProto,  required this.channelProtos});
  
  final ChannelCategoryTypeProto channelCategoryTypeProto;
  final List<ChannelProto> channelProtos;

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
          ChannelItemGroupName(name:channelCategoryTypeProto.name),
          SizedBox(height:10),
          ChannelItems(channelProtos: channelProtos),
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
  const ChannelItems({super.key, required this.channelProtos});
  final List<ChannelProto> channelProtos;
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
          for (ChannelProto c in channelProtos) 
            ChannelItem(channelProto: c,),
        ],
      ),
    );
  }
}


class LabelItemGroup extends StatelessWidget {
  const LabelItemGroup({super.key});

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
    EvaluationRespProto? resp = evaluationViewModel.get();
    if(resp == null)return Container();

    LabelEvaluationRespProto labelResp = resp.labelEvaluationResp;
    List<LabelProto> labels = labelResp.matches;

    return Container(
      child:GridView.count(  
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          for (LabelProto l in labels) 
          LabelItem(label: l,)
        ],
      ),
    );
  }
}


class LabelItem extends StatelessWidget {
  const LabelItem({super.key, required this.label});
  
  final LabelProto label;

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
              Container(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.check_circle_outlined,
                  color:Palette.kToOrange[600],
                  size:25,
                ),
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



class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelProto});
  
  final ChannelProto channelProto;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);

    bool selected = evaluationSelectedViewModel.hasChannlID(channelProto.id);

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed:(){
        evaluationSelectedViewModel.setChannelID(channelProto.id);
      },

      child:Stack(
        children:[
          Container(
            alignment: Alignment.center,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                ChannelItemIcon(image: channelProto.image,),
                ChannelItemName(name:channelProto.name),
              ],
            ),
          ),
          
          if(selected)
            Container(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.check_circle_outlined,
                color:Palette.kToOrange[600],
                size:25,
              ),
            ),
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

