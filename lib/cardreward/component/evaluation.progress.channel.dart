

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:provider/provider.dart';


class EvaluationProgressChannel extends StatelessWidget {
  const EvaluationProgressChannel({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children:[
        ChannelCategoryTypes(),
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
    

    return Container(
      alignment: Alignment.centerLeft,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children:[
            for(ChannelCategoryTypeProto c in channelCategoryTypes)
              ChannelCategoryType(channelCategoryType: c),
            
          ]
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
      height:400,
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


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelProto});
  
  final ChannelProto channelProto;

  @override
  Widget build(BuildContext context) {
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
          
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          )
        ),
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(0, 12, 0, 0),
        ),
      ),
      onPressed:(){
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

