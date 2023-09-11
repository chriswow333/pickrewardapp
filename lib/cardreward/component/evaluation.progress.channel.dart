

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
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
        categoryViewModel.toggle(-1);
        categoryViewModel.selectedLabel();
      },
      child:Column(
        children:[
          LabelCategoryTypeIcon(),
          LabelCategoryName(),
          SizedBox(height:10,),
          if(categoryViewModel.get() == -1)
            BottomLine(),
        ]
      )
    );
  }
}


class LabelCategoryTypeIcon extends StatelessWidget {
  const LabelCategoryTypeIcon({super.key,});
  
  @override
  Widget build(BuildContext context) {
    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);

    IconData icon = Icons.list_alt_rounded;
    bool selected = categoryViewModel.get() == -1;
    return Container(
      child:Icon(
        color:selected ? Palette.kToBlue[600] : Palette.kToBlack[200],
        icon,
      )
    );
  }
}


class LabelCategoryName extends StatelessWidget {
  const LabelCategoryName({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);
    bool selected = categoryViewModel.get() == -1;
    return Container(
      child:Text(
        '通路總覽',
        style: TextStyle(
          fontSize: 15,
          color: selected? Palette.kToBlue[600] : Palette.kToBlack[200],
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
          ChannelCategoryTypeIcon(categoryType:channelCategoryType.id),
          ChannelCategoryName(categoryType:channelCategoryType.id, name:channelCategoryType.name),
          SizedBox(height:10),
          if(channelCategoryType.id == categoryViewModel.get())
            BottomLine(),
        ]
      )
    );
  }
}


class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:70,
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlue[600]!,  
        ),
        color:Palette.kToBlue[600],
      ),  
    );
  }
}


class ChannelCategoryTypeIcon extends StatelessWidget {
  const ChannelCategoryTypeIcon({super.key, required this.categoryType});
  
  final int categoryType;
  
  @override
  Widget build(BuildContext context) {

    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);
    bool selected = categoryType == categoryViewModel.get();

    IconData icon = Icons.wallet_giftcard_outlined;

    switch(categoryType) {
      case 0:
        icon = Icons.wallet_giftcard_outlined;
        break;
      case 1:
        icon = Icons.food_bank_outlined;
        break;
      case 2:
        icon = Icons.travel_explore_outlined;
        break;
      case 3:
        icon = Icons.directions_transit_filled_outlined;
        break;
      case 4:
        icon = Icons.card_travel_sharp;
        break;
      case 5:
        icon = Icons.video_camera_front_outlined;
        break;
    }


    return Container(
      child:Icon(
        color:selected ? Palette.kToBlue[600] : Palette.kToBlack[200],
        icon,
      )
    );
  }
}


class ChannelCategoryName extends StatelessWidget {
  const ChannelCategoryName({super.key, required this.categoryType, required this.name});
  
  final int categoryType;
  final String name;
  
  @override
  Widget build(BuildContext context) {

    EvaluationChannelCategoryViewModel categoryViewModel = Provider.of<EvaluationChannelCategoryViewModel>(context);
    bool selected = categoryType == categoryViewModel.get();

    return Container(
      child:Text(
        name,
        style: TextStyle(
          fontSize: 15,
          color: selected? Palette.kToBlue[600] : Palette.kToBlack[200],
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
            LabelItemIcon(labelType:label.labelType),
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
          evaluationSelectedViewModel.setChannelID(channelProto.id);
        },
        child:Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left:2, right:2),
          child:Column(
            children:[
              ChannelItemIcon(image: channelProto.image,),
              ChannelItemName(name:channelProto.name),
            ],
          ),
        ),
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
      child:Text(
        name,
        style:TextStyle(
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}

