import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.item.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.item.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.selectedchannel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';

import 'channel.progress.channel.categorytype.dart';


class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        if(searchChannelViewModel.searchChannelFlag)
          const SearchChannelItems(),
        if(!searchChannelViewModel.searchChannelFlag)
          NormalChannelGroup(controller: controller,),
      ]
    );
  }
}


class NormalChannelGroup extends StatelessWidget {
  const NormalChannelGroup({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Column(
        children:[
          ChannelCategoryTypes(),
          SizedBox(height:20), 
          Expanded(
            child:Stack(
              children:[
                ChannelItemGroups(),
                Container(
                  alignment: Alignment.bottomCenter,
                  child:SelectedChannelResult(controller: controller,),
                )
                
              ]
            )
            
          ),
        ]
      )
    );
  }
}