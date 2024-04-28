


import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/channelsearch/model/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class ShowLabelItems extends StatelessWidget {
  const ShowLabelItems({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    
    return Container(
      color: Palette.kToBlack[0],
      padding: const EdgeInsets.only(top:10),
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children:[
            for (ShowLabelModel showLabelModel in channelViewModel.showLabelModels)
              Column(
                children:[
                  ShowLabelItem(showLabelModel: showLabelModel,),
                  const SizedBox(height:10),
                  if(channelViewModel.selectedShowLabel == showLabelModel.label)
                    const BottomLine(),
                ]                
              ),
              
          ]
        ),
      )
    );
  }
}

class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:32,
      height:3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:Palette.kToBlack[900]!,  
        ),
        color:Palette.kToBlack[900],
      ),  
    );
  }
}



class ShowLabelItem extends StatelessWidget {
  const ShowLabelItem({super.key, required this.showLabelModel});

  final ShowLabelModel showLabelModel;

  @override
  Widget build(BuildContext context) {
    
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    return Container(
      key:channelViewModel.getChannelCategoryGlobalKeys(showLabelModel.label),
      child:TextButton(
        onPressed: (){
          channelViewModel.selectedShowLabel = showLabelModel.label;
          Scrollable.ensureVisible(channelViewModel.getShowItemGlobalKeys(showLabelModel.label).currentContext!,
            duration:const Duration(milliseconds: 300),
          );
        },
        child:Column(
          children:[
            ShowLabelIcon(label: showLabelModel.label,),
            ShowLabelName(label:showLabelModel.label, name:showLabelModel.name),
          ],
        ),
      )
    );
  }
}



class ShowLabelIcon extends StatelessWidget {
  const ShowLabelIcon({super.key, required this.label});
  
  final String label;

  @override
  Widget build(BuildContext context) {

    
    IconData icon = Icons.wallet_giftcard_outlined;
    
    switch(label) {
      case 'ecommerce':
        icon = Icons.wallet_giftcard_outlined;
        break;
      case 'food':
        icon = Icons.restaurant;
        break;
      case 'travel':
        icon = Icons.travel_explore_outlined;
        break;
      case 'transportation':
        icon = Icons.directions_transit_filled_outlined;
        break;
      case 'oversea':
        icon = Icons.card_travel_sharp;
        break;
      case 'streaming':
        icon = Icons.video_camera_front_outlined;
        break;
      case 'payFee':
        icon = Icons.water_damage_outlined;
        break;
      case 'mall':
        icon = Icons.theaters_outlined;
        break;
      case 'insurance':
        icon = Icons.health_and_safety;
        break;
      case 'supermarket':
        icon = Icons.shopping_cart_outlined;
        break;
      case 'delivery':
        icon = Icons.bike_scooter;
        break;
      case 'casual':
        icon = Icons.sports_cricket_outlined;
        break;
      default:
        icon = Icons.error; // You may replace Icons.error with the appropriate default icon
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

class ShowLabelName extends StatelessWidget {
  
  const ShowLabelName({super.key, required this.label, required this.name});
  
  final String label;
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


