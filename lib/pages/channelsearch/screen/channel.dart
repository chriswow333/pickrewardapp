import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/channelsearch/component/channel.showlabel.dart';
import 'package:pickrewardapp/pages/channelsearch/component/channel.item.dart';
import 'package:pickrewardapp/pages/channelsearch/component/search.channel.item.dart';
import 'package:pickrewardapp/pages/channelsearch/widgets/selected.bar.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';



class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          if(searchChannelViewModel.searchChannelFlag)
            SearchChannelItems(controller:controller),
          
          if(!searchChannelViewModel.searchChannelFlag)
            Expanded(
              child:NormalChannelGroup(controller: controller,),
            ),

          const SizedBox(height:10),
          SizedBox(
           child:SelectedChannelResult(controller: controller,),
          )
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
          ShowLabelItems(),
          SizedBox(height: 15,),
          Expanded(
            child:ChannelItemGroups(),
          ),
        ]
      )
    );
  }
}