import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:pickrewardapp/card/viewmodel/channel.dart';
import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    int type = channelViewModel.channelCategoryType;
    channelViewModel.fetchChannelsByChannelCategoryType(type);
    List<ChannelItemModel> channelItemModels = channelViewModel.getChannelsByChannelCategoryType(type);

    return Container(
      height:400,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          for(ChannelItemModel channelItemModel in channelItemModels)
            ChannelItem(channelItemModel:channelItemModel),
        ],
      ),
    );
  }
}


class ChannelItem extends StatefulWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;

  @override
  State<ChannelItem> createState() => _ChannelItemState();
}

class _ChannelItemState extends State<ChannelItem> {
  
  
  bool _selected = false;
   
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    _selected = rewardSelectedViewModel.existSelectedChannelID(widget.channelItemModel.id);

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
          _selected ? 
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          ):null
        ),
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(0, 12, 0, 0),
        ),
      ),
      onPressed:(){
        setState((){
          _selected = !_selected;
        });
        rewardSelectedViewModel.channelID = widget.channelItemModel.id;
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            ChannelItemIcon(image:widget.channelItemModel.image),
            ChannelItemName(name:widget.channelItemModel.name),
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

