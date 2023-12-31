


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel_category.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class ChannelCategoryTypes extends StatelessWidget {
  const ChannelCategoryTypes({super.key});

  @override
  Widget build(BuildContext context) {
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Column(
            children:[
              const LabelType(),
              if(channelViewModel.channelCategoryType == -1)
                const BottomLine(),
            ]
          ),

          for (ChannelCategoryTypeModel channelCategoryTypeModel in channelViewModel.channelCategoryTypeModels)
            Column(
              children:[
                ChannelCategoryType(channelCategoryTypeModel: channelCategoryTypeModel,),
                if(channelViewModel.channelCategoryType == channelCategoryTypeModel.categoryType)
                  const BottomLine(),
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
        width:7,
        height:7,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:Palette.kToYellow[300]!,  
        ),
        color:Palette.kToYellow[300],
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
      key:channelViewModel.getChannelCategoryGlobalKeys(-1),
      child:TextButton(
        onPressed: (){
          channelViewModel.channelCategoryType = -1;
          Scrollable.ensureVisible(channelViewModel.getChannelItemGlobalKeys(-1).currentContext!,
            duration:const Duration(milliseconds: 300),
          );
        },
        child:const Column(
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
    return Container(
      child:Icon(
        color: Palette.kToBlack[500],
        icon,
      )
    );
  }
}

class LabelName extends StatelessWidget {
  const LabelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '常用',
        style: TextStyle(
          fontSize: 15,
          color:  Palette.kToBlack[500],
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
      key:channelViewModel.getChannelCategoryGlobalKeys(channelCategoryTypeModel.categoryType),
      child:TextButton(
        onPressed: (){
          channelViewModel.channelCategoryType = channelCategoryTypeModel.categoryType;
          Scrollable.ensureVisible(channelViewModel.getChannelItemGlobalKeys(channelCategoryTypeModel.categoryType).currentContext!,
            duration:const Duration(milliseconds: 300),
          );
        },
        child:Column(
          children:[
            ChannelCategoryTypeIcon(categoryType: channelCategoryTypeModel.categoryType,),
            ChannelCategoryTypeName(categoryType:channelCategoryTypeModel.categoryType, name:channelCategoryTypeModel.name),
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
      case 6:
        icon = Icons.water_damage_outlined;
        break;
      case 7:
        icon = Icons.theaters_outlined;
        break;
      case 8:
        icon = Icons.health_and_safety;
        break;
      case 9:
        icon = Icons.shopping_cart_outlined;
        break;
      case 10:
        icon = Icons.bike_scooter;
        break;
      case 11:
        icon = Icons.sports_cricket_outlined;
        break;
    }

    return Container(
      child:Icon(
        color:Palette.kToBlack[500],
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
    
    return Container(
      child:Text(
        name,
        style: TextStyle(
          fontSize: 15,
          color:  Palette.kToBlack[500],
        ),  
      )
    );
  }
}


