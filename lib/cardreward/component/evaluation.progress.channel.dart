

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:provider/provider.dart';


class EvaluationProgressChannel extends StatelessWidget {
  const EvaluationProgressChannel({super.key});

  @override
  Widget build(BuildContext context) {

    
    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);

    return Column(
      children:[
        ChannelCategoryTypes(),
        if(categoryViewModel.isSelectedLabel())
          LabelItems(),
        if(!categoryViewModel.isSelectedLabel())
          ChannelItems(),
      ]
    );
  }
}


class ChannelCategoryTypes extends StatelessWidget {
  const ChannelCategoryTypes({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationRespProto? resp = evaluationViewModel.get();

    if (resp == null) return Container();
  
    List<ChannelCategoryTypeProto> channelCategoryTypes = resp.channelCategoryTypes;
        
    LabelEvaluationRespProto labelResp = resp.labelEvaluationResp;
    List<LabelProto> labels = labelResp.matches;

    return Container(
      alignment: Alignment.centerLeft,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children:[
            if (labels.isNotEmpty)
              LabelCategoryType(),

            for(ChannelCategoryTypeProto c in channelCategoryTypes)
              ChannelCategoryType(channelCategoryType: c),
            
          ]
        ),
      )
    );
  }
}

class LabelCategoryType extends StatelessWidget {
  const LabelCategoryType({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);

    return TextButton(
      onPressed: (){
        categoryViewModel.selectedLabel();
      },
      child:Column(
        children:[
          LabelCategoryTypeIcon(),
          LabelCategoryName(),
        ]
      )
    );
  }
}


class LabelCategoryTypeIcon extends StatelessWidget {
  const LabelCategoryTypeIcon({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        color:Colors.teal[700],
        Icons.shopping_bag_sharp,
      )
    );
  }
}


class LabelCategoryName extends StatelessWidget {
  const LabelCategoryName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '通路總覽',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[900],
        ),  
      )
    );
  }
}




class ChannelCategoryType extends StatelessWidget {
  const ChannelCategoryType({super.key, required this.channelCategoryType});
  final ChannelCategoryTypeProto channelCategoryType;
  
  @override
  Widget build(BuildContext context) {
    
    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);

    return TextButton(
      onPressed: (){
        categoryViewModel.toggle(channelCategoryType.id);
      },
      child:Column(
        children:[
          ChannelCategoryTypeIcon(id:channelCategoryType.id),
          ChannelCategoryName(name:channelCategoryType.name),
        ]
      )
    );
  }
}


class ChannelCategoryTypeIcon extends StatelessWidget {
  const ChannelCategoryTypeIcon({super.key, required this.id});
  final int id;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        color:Colors.teal[700],
        Icons.shopping_bag_sharp,
      )
    );
  }
}


class ChannelCategoryName extends StatelessWidget {
  const ChannelCategoryName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        name,
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[900],
        ),  
      )
    );
  }
}

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {


    EvaluationChannelCategoryViewModel categoryVideModel = Provider.of<EvaluationChannelCategoryViewModel>(context);
    
    int? selectedId = categoryVideModel.get();
    if (selectedId == null )return Container();
    
    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationRespProto? resp = evaluationViewModel.get();
    if(resp == null)return Container();

    List<ChannelProto> channelProtos = [];
    for (ChannelEvaluationRespProto c in resp.channelEvaluationResps){
      if (c.channelCategoryType == selectedId){
        channelProtos = c.matches;
        break;
      }
    }

    return Container(
      height:350,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          for (ChannelProto c in channelProtos) 
            ChannelItem(channelProto: c,),
        ],
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
      height:400,
      child:GridView.count(  
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

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        side:evaluationSelectedViewModel.hasLabel(label.labelType)?
        MaterialStatePropertyAll(
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          )
        ):null,
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(0, 15, 0, 0),
        ),
      ),
      onPressed:(){
        evaluationSelectedViewModel.setLabel(label.labelType);
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            LabelItemIcon(),
            LabelItemName(name:label.labelName),
          ],
        ),
      ),
    );
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
        style: 
        TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}


class LabelItemIcon extends StatelessWidget {
  const LabelItemIcon({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        color:Colors.teal[700],
        size:40,
        Icons.shopping_bag_sharp,
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
    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        side:evaluationSelectedViewModel.hasChannlID(channelProto.id)?
          MaterialStatePropertyAll(
            BorderSide(
              color:Colors.teal[900]!,
              width: 1,
            )
          ):null,
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(0, 12, 0, 0),
        ),
      ),
      onPressed:(){
        evaluationSelectedViewModel.setChannelID(channelProto.id);
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            ChannelItemIcon(image: channelProto.image,),
            ChannelItemName(name:channelProto.name),
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
          color: Colors.teal[900],
        ),
      )
    );
  }
}

