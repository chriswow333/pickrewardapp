import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.selectedbar.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.result.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';

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
          ChannelHeaderTitle(controller: _controller,),
          const SizedBox(height: 10),
          Expanded(
            child:PageView(
              dragStartBehavior:DragStartBehavior.down,
              physics: const ClampingScrollPhysics(),
              controller:_controller,
              onPageChanged:(int page){
                channelProgressSelectedPage.changePage(page);
              },
              children:[
                ChannelProgress(controller:_controller),
                FindCardProgress(controller:_controller),
                CardRewardEvaluationResultsProgress(),
              ]
            )
          ),
        ]
      ),
    );
  }
}


class ChannelHeaderTitle extends StatelessWidget {
  const ChannelHeaderTitle({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          padding: const EdgeInsets.only(left:10,right:10),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                height: 50,
                child:Image.asset(
                  'images/logo.png',
                ),
              ),
              const SizedBox(width:20),
              SizedBox(
                width:MediaQuery.of(context).size.width * 0.7,
                child:ChannelProgressBar(),
              ),
            ]
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          child:SelectedChannelResult(controller: controller,),
        )
      ]
    );
  }
}

