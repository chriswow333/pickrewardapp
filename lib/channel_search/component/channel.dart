


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.result.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

import 'package:provider/provider.dart';


class ChannelComponent extends StatelessWidget {
  const ChannelComponent({super.key});

  @override
  Widget build(BuildContext context) {
    
    ChannelProgressViewModel channelProgressViewModel = Provider.of<ChannelProgressViewModel>(context);

    return Container(
      child:Column(
        children:[
          RewardProgressBar(),
          SizedBox(height:20), 
          if (channelProgressViewModel.progress == ChannelProgressEnum.Channel)
            ChannelProgress(),
          if (channelProgressViewModel.progress == ChannelProgressEnum.FindCard)
            FindCardProgress(),
          if (channelProgressViewModel.progress == ChannelProgressEnum.FindResult)
            CardResultsProgress(),
        ]
      ),
    );
  }
}

