

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.selectedbar.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SearchChannelItems extends StatelessWidget {
  const SearchChannelItems({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    SearchChannelViewModel searchCardViewModel = Provider.of<SearchChannelViewModel>(context);
    bool loading = searchCardViewModel.loading;
    return Expanded(
      child:Stack(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              
              Container(
                padding:EdgeInsets.only(top:10, bottom: 5),
                child:Text('搜尋結果',
                  style: TextStyle(
                    color:Palette.kToBlack[600],
                  ),
                ),
              ),
              
              if(loading)
                LoadingItem(),

              if(!loading)
                SearchItems(),
            ],
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child:SelectedChannelResult(controller: controller,),
          ),
          


        ]
      )
      
      
    );
  }
}
class LoadingItem extends StatelessWidget {
  const LoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            width:40,
            height:40,
            child:CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Palette.kToBlue[600]
              ),
            )
          ),
        ]
      )
    );
  }
}



class SearchItems extends StatelessWidget {
  const SearchItems({super.key});

  @override
  Widget build(BuildContext context) {

    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    List<ChannelItemModel> searchChannelItemModels = searchChannelViewModel.searchItemModels;

    return Expanded(
      child:SingleChildScrollView(
        child:Wrap(
          // crossAxisAlignment: CrossAxisAlignment.start,
          runSpacing: 20,
          children:[
            if(searchChannelViewModel.searched && searchChannelItemModels.isEmpty) 
              EmptyItem(),

            for(ChannelItemModel c in searchChannelItemModels)
              ChannelItem(channelItemModel: c,)
          ]
        )
      )
    );
  }
}


class EmptyItem extends StatelessWidget {
  const EmptyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('查無資料'),
        ]
      )
      
    );
  }
}

class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});
  
  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    return TextButton(
      onPressed: (){
          criteriaViewModel.channel = channelItemModel;
      },
      child:Container(
        child:Row(
          children:[
            SelectedIcon(id:channelItemModel.id),
            SizedBox(width:10),
            ChannelItemIcon(image:channelItemModel.image),
            SizedBox(width:20),
            ChannelItemName(name:channelItemModel.name),
          ]
        )
      )
    );
  }
}

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    bool selected = criteriaViewModel.existChannel(id);

    if(selected) {
      return Container(
        child:Image.asset(
          'images/logo.png',
          width: 25,
          height:25,
        )
      );
    }else {
      return SizedBox(width:25);
    }
    
  }
}


class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:Text(
        name,
        style:TextStyle(
          color: Palette.kToBlack[600],
          fontSize: 16,
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
        // fit:BoxFit.cover,
        width:60,
        height:50,
      ),
    );
  }
}