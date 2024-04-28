

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/channelsearch/component/search.channel.dart';
import 'package:pickrewardapp/pages/channelsearch/model/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/screen/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/screen/criteria.dart';
import 'package:pickrewardapp/pages/channelsearch/screen/eventresult.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/task_label.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/progress.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.search.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/eventresult.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/criteria.selected.dart';



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



class ChannelSearchScreen extends StatelessWidget {
  ChannelSearchScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor:Palette.kToBlack[0],
        transitionBetweenRoutes: false,
        border:Border(
          bottom: BorderSide(
          color: Palette.kToBlack[0]!,
          width: 0.0, // 0.0 means one physical pixel
          ),
        ),
        leading:(channelProgressSelectedPage.page == 0) ? null:OthersNavBarLeading(controller: _controller),
        middle: (channelProgressSelectedPage.page == 0) ? const ChannelSearchNavBarMiddle():const OthersNavBarMiddle(),
      ),
      child: SizedBox.expand(
        child:SafeArea(
          child:Center(
            child:LayoutBuilder(
              builder:((context, constraints) {
                double screenWidth = MediaQuery.of(context).size.width;
                double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
                if (screenWidth > tabletWidthThreshold) {
                  return SizedBox(
                    width: tabletWidthThreshold,
                    child: ChannelProgressComponent(controller: _controller,),
                  );
                } else {
                  return ChannelProgressComponent(controller: _controller);
                }
              }),
            ),
          ),
        ),
      )
    );
  }
}





class ChannelProgressComponent extends StatelessWidget {
  const ChannelProgressComponent({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context, listen:false);
    return Expanded(
      child:PageView(
        physics: const ClampingScrollPhysics(),
        controller:controller,
        onPageChanged:(int page){
          channelProgressSelectedPage.changePage(page);
        },
        children:[
          ChannelProgress(controller:controller),
          CriteriaProgress(controller:controller),
          EventResultProgress(controller:controller),
        ]
      ),
    );
  }
}



class ChannelSearchNavBarMiddle extends StatelessWidget {
  const ChannelSearchNavBarMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child:SearchChannelBar()
    );
  }
}

class OthersNavBarLeading extends StatelessWidget {
  const OthersNavBarLeading({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        controller.animateToPage(ChannelProgressPageModel.channel, 
          duration: const Duration(milliseconds: 200), 
          curve: Curves.linear
        );
      },
      child:const Icon(
        Icons.arrow_back_ios_new
      ),
    );
  }
}




class OthersNavBarMiddle extends StatelessWidget {
  const OthersNavBarMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('查詢高回饋信用卡',
        style: TextStyle(
          fontSize: 18,
          color:Palette.kToBlack[500],
          fontWeight: FontWeight.bold
        ),
      );
  }
}
