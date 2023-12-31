import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.item.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.search.item.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.selectedbar.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';

import 'channel.progress.channel.categorytype.dart';


class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    
    return Container(
      padding: const EdgeInsets.only(right:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const ChannelHeaderTitle(),
          const SizedBox(height: 10),
          if(searchChannelViewModel.searchChannelFlag)
            SearchChannelItems(controller:controller),
            
          if(!searchChannelViewModel.searchChannelFlag)
            Expanded(
              child:NormalChannelGroup(controller: controller,),
            ),
          const SizedBox(
            height:20
          ),
          SizedBox(
           child:SelectedChannelResult(controller: controller,),
          )
        ]
      )
    );
  }
}

class ChannelHeaderTitle extends StatelessWidget {
  const ChannelHeaderTitle({super.key,});

  @override
  Widget build(BuildContext context) {

    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);

    return Container(
      child:Column(
        children:[
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                if(!searchChannelViewModel.searchChannelFlag)
                  SizedBox(
                    height: 50,
                    child:Container(
                      padding: const EdgeInsets.only(right:20),
                      child:Image.asset(
                        'images/logo.png',
                      ),
                    )
                  ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top:5),
                    child:const SearchChannelBar(),
                  ),
                ),
              ]
            ),
          ),
        ]
      )
    );
  }
}


class NormalChannelGroup extends StatelessWidget {
  const NormalChannelGroup({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const ChannelCategoryTypes(),
          const SizedBox(height:20), 
          Expanded(
            child:Stack(
              children:[
                Container(
                  child:const ChannelItemGroups(),
                )
              ]
            )
          ),
        ]
      )
    );
  }
}