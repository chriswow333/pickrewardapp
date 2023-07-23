


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/viewmodel/channel.dart';


class ChannelCategoryTypes extends StatelessWidget {
  const ChannelCategoryTypes({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          for (ChannelCategoryTypeModel channelCategoryTypeModel in channelViewModel.channelCategoryTypeModels)
            ChannelCategoryType(channelCategoryTypeModel: channelCategoryTypeModel,)
        ]
      ),
    );
  }
}

class ChannelCategoryType extends StatelessWidget {
  const ChannelCategoryType({super.key, required this.channelCategoryTypeModel});

  final ChannelCategoryTypeModel channelCategoryTypeModel;

  @override
  Widget build(BuildContext context) {
    
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    return TextButton(
      onPressed: (){
        channelViewModel.channelCategoryType = channelCategoryTypeModel.id;
      },
      child:Column(
        children:[
          ChannelCategoryTypeIcon(categoryType: channelCategoryTypeModel.id,),
          ChannelCategoryTypeName(name:channelCategoryTypeModel.name),
        ],
      ),
    );
  }
}



class ChannelCategoryTypeIcon extends StatelessWidget {
  const ChannelCategoryTypeIcon({super.key, required this.categoryType});
  
  final int categoryType;

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

class ChannelCategoryTypeName extends StatelessWidget {
  const ChannelCategoryTypeName({super.key, required this.name});
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


