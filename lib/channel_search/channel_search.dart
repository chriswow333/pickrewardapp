

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/screen/screen.channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/task_label.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:provider/provider.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';



class ChannelSearchPage extends StatelessWidget {
  const ChannelSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<ChannelViewModel>(create:(_)=>ChannelViewModel()),
        ChangeNotifierProvider<CriteriaViewModel>(create:(_)=>CriteriaViewModel()),
        ChangeNotifierProvider<TaskLabelViewModel>(create:(_)=>TaskLabelViewModel()),
        ChangeNotifierProvider<CardEventResultsViewModel>(create:(_)=>CardEventResultsViewModel()),
        ChangeNotifierProvider<ChannelProgressSelectedPage>(create:(_)=>ChannelProgressSelectedPage()),
        ChangeNotifierProvider<SearchChannelViewModel>(create:(_)=>SearchChannelViewModel()),
      ],
      child:ChannelSearchScreen()
    );
  }
}

