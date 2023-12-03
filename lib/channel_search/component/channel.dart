

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.criteria.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.dart';
import 'package:pickrewardapp/channel_search/viewmodel/progress.dart';

import 'package:provider/provider.dart';



class ChannelComponent extends StatefulWidget {
  const ChannelComponent({super.key});

  @override
  State<ChannelComponent> createState() => _ChannelComponentState();
}

class _ChannelComponentState extends State<ChannelComponent> with SingleTickerProviderStateMixin {

  late PageController _controller;

  @override
  void initState(){
    super.initState();
     _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context, listen:false);
    return Container(
      padding: const EdgeInsets.all(10),
      child:Column(
        children:[
          const SizedBox(height: 10),
          Expanded(
            child:PageView(
              physics: const ClampingScrollPhysics(), // NeverScrollableScrollPhysics(),
              controller:_controller,
              onPageChanged:(int page){
                channelProgressSelectedPage.changePage(page);
              },
              children:[
                ChannelProgress(controller:_controller),
                CriteriaProgress(controller:_controller),
                EventResultProgress(controller:_controller),
              ]
            )
          ),
         
        ]
      ),
    );
  }
}



