


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class ChannelCategoryTypes extends StatefulWidget {
  const ChannelCategoryTypes({super.key});

  @override
  State<ChannelCategoryTypes> createState() => _ChannelCategoryTypesState();
}

class _ChannelCategoryTypesState extends State<ChannelCategoryTypes> {

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    return SingleChildScrollView(
      controller: _controller,
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          Column(
            children:[
              LabelType(),
              if(channelViewModel.channelCategoryType == -1)
                BottomLine(),
            ]
          ),

          for (ChannelCategoryTypeModel channelCategoryTypeModel in channelViewModel.channelCategoryTypeModels)
            Column(
              children:[
                ChannelCategoryType(channelCategoryTypeModel: channelCategoryTypeModel,),
                if(channelViewModel.channelCategoryType == channelCategoryTypeModel.id)
                  BottomLine(),
              ]                
            ),
            
        ]
      ),
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


class LabelType extends StatelessWidget {
  const LabelType({super.key});

  @override
  Widget build(BuildContext context) {

  ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    return Container(
      child:TextButton(
        onPressed: (){
          channelViewModel.channelCategoryType = -1;
        },
        child:Column(
          children:[
            LabelIcon(),
            LabelName(),
          ],
        ),
      )
    );
  }
}

class LabelIcon extends StatelessWidget {
  const LabelIcon({super.key});

  @override
  Widget build(BuildContext context) {

    IconData icon = Icons.list_alt_rounded;
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    bool selected = channelViewModel.channelCategoryType == -1;
    return Container(
      child:Icon(
        color:selected ? Palette.kToBlue[600] : Palette.kToBlack[200],
        icon,
      )
    );
  }
}

class LabelName extends StatelessWidget {
  const LabelName({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    bool selected = channelViewModel.channelCategoryType == -1;

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
  const ChannelCategoryType({super.key, required this.channelCategoryTypeModel});

  final ChannelCategoryTypeModel channelCategoryTypeModel;

  @override
  Widget build(BuildContext context) {
    
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    return Container(
      key:channelViewModel.getChannelCategoryGlobalKeys(channelCategoryTypeModel.id),
      child:TextButton(
        onPressed: (){
          channelViewModel.channelCategoryType = channelCategoryTypeModel.id;
          Scrollable.ensureVisible(channelViewModel.getChannelItemGlobalKeys(channelCategoryTypeModel.id).currentContext!,
            duration:Duration(milliseconds: 300),
          );
        },
        child:Column(
          children:[
            ChannelCategoryTypeIcon(categoryType: channelCategoryTypeModel.id,),
            ChannelCategoryTypeName(categoryType:channelCategoryTypeModel.id, name:channelCategoryTypeModel.name),
          ],
        ),
      )
    );
  }
}



class ChannelCategoryTypeIcon extends StatelessWidget {
  const ChannelCategoryTypeIcon({super.key, required this.categoryType});
  
  final int categoryType;

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    bool selected = categoryType == channelViewModel.channelCategoryType;

    
    IconData icon = Icons.wallet_giftcard_outlined;
    switch(categoryType) {
      case 0:
        icon = Icons.wallet_giftcard_outlined;
        break;
      case 1:
        icon = Icons.restaurant;
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

class ChannelCategoryTypeName extends StatelessWidget {
  
  const ChannelCategoryTypeName({super.key, required this.categoryType, required this.name});
  
  final int categoryType;
  final String name;
  @override
  Widget build(BuildContext context) {
    
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    bool selected = categoryType == channelViewModel.channelCategoryType;

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


