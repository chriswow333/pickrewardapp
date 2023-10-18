import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.item.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.item.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';

import 'channel.progress.channel.categorytype.dart';


class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        SearchChannelBar(),
        SizedBox(height:10),
        if(searchChannelViewModel.searchChannelFlag)
          SearchChannelItems(),
        if(!searchChannelViewModel.searchChannelFlag)
          NormalChannelGroup(),
       
      ]
    );
  }
}


class NormalChannelGroup extends StatelessWidget {
  const NormalChannelGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Column(
        children:[
          ChannelCategoryTypes(),
          SizedBox(height:20), 
          Expanded(
            child:ChannelItemGroups(),
          ),
        ]
      )
    );
  }
}