

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel/model/channel.dart';
import 'package:pickrewardapp/channel/viewmodel/channel.search.dart';
import 'package:pickrewardapp/channel/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SearchChannelItems extends StatelessWidget {
  const SearchChannelItems({super.key, required this.controller});
  
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    bool loading = searchChannelViewModel.loading;
    
    String keyword = searchChannelViewModel.keyword;

    if(keyword.isNotEmpty) {
       return Expanded(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              Container(
                padding:const EdgeInsets.only(top:20,left:10),
                child:const Text('搜尋結果',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if(loading)
                const LoadingItem(),

              if(!loading)
                const SearchItems(),
            ],
          ),
        );
    }else {
      return const Expanded(
        child:SearchChannelKeywordHistory(),
      );
    }
  }
}

class SearchChannelKeywordHistory extends StatelessWidget {
  const SearchChannelKeywordHistory({super.key});

  @override
  Widget build(BuildContext context) {
    
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    List<String> keywordHistory = searchChannelViewModel.searchKeywordHistory;

    return Container(
      padding: const EdgeInsets.only(top:20,left:10),
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              child:const Text('最近搜尋',
                style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )
              )
            ),
            if(keywordHistory.isEmpty) 
            Container(
              padding: const EdgeInsets.only(top:10),
              child:const Text('尚無資料',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            for(String keyword in keywordHistory)
              KeywordHistory(keyword: keyword,),
          ]
        )
      )
    );
  }
} 


class KeywordHistory extends StatelessWidget {
  const KeywordHistory({super.key, required this.keyword});

  final String keyword;

  @override
  Widget build(BuildContext context) {

    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        searchChannelViewModel.searchChannelFromHistory(keyword);
      },
      child:Container(
        padding: const EdgeInsets.only(top:10,bottom: 10),
        child:Wrap(
          alignment:WrapAlignment.end,
          children:[
            const Icon(
              Icons.search,
              size:30,
            ),
            const SizedBox(width:10),
            Text(keyword,
              style:const TextStyle(
                fontSize: 20,
              )
            )
          ]
        )
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
          runSpacing: 20,
          children:[
            if(searchChannelViewModel.resultEmpty) 
              const EmptyItem(),

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
      padding: const EdgeInsets.only(left:10, top:10,),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.start,
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

    return Container(
      child: GestureDetector(
      onTap: (){
        criteriaViewModel.channel = channelItemModel;
      },
      child:Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
        ),
        child:Row(
          children:[
            ChannelItemIcon(image:channelItemModel.id),
            const SizedBox(width:20),
            ChannelItemName(name:channelItemModel.name),
            const SizedBox(width:10),
            SelectedIcon(id:channelItemModel.id),
          ]
        )
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
      return ClipOval(
        child:Icon(Icons.check_circle_sharp,
          color:Palette.kToOrange[500],
        )
      );
    }else {
      return const SizedBox(width:25);
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
    return CircleAvatar(
      backgroundColor: Palette.kToBlack[0],
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        // fit:BoxFit.cover,
        width:40,
        height:40,
      ),
    );
  }
}