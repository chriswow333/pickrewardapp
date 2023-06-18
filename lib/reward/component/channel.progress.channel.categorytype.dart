


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/viewmodel/channel.dart';
import 'package:provider/provider.dart';

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
        crossAxisSpacing: 4.0,  
        mainAxisSpacing: 8.0,  
        children:[
          for(ChannelItemModel channelItemModel in channelItemModels)
              ChannelItem(channelItemModel:channelItemModel),
        ],
      ),
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      onPressed: (){

      },
      child:Container(
        child:Column(
          children:[
            ChannelItemIcon(image:channelItemModel.image),
            ChannelItemName(name:channelItemModel.name),
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
    return Container(
      padding:const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // color:Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child:Text(name,
        style: 
        TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}

