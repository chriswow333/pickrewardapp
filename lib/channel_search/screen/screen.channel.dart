



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/progress.channel.dart';
import 'package:pickrewardapp/channel_search/component/progress.criteria.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.dart';
import 'package:pickrewardapp/channel_search/component/progress.channel.search.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/progress.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class ChannelSearchScreen extends StatelessWidget {
  ChannelSearchScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    return Scaffold(
      body:CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border:null,
          transitionBetweenRoutes: false,
          leading:(channelProgressSelectedPage.page == 0) ? ChannelSearchNavBarLeading():OthersNavBarLeading(controller: _controller),
          middle: (channelProgressSelectedPage.page == 0) ? ChannelSearchNavBarMiddle():OthersNavBarMiddle(),
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
                    // 屏幕较小，不限制应用宽度
                    return ChannelProgressComponent(controller: _controller);
                  }
                }),
              ),
            ),
          ),
        )
      ),
    );
  }
}





class ChannelProgressComponent extends StatelessWidget {
  const ChannelProgressComponent({super.key, required this.controller});

  final PageController controller;
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
              // physics: const NeverScrollableScrollPhysics(),
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
          ),
        ]
      ),
    );
  }
}



class ChannelSearchNavBarLeading extends StatelessWidget {
  const ChannelSearchNavBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Container(
        child:Image.asset(
          'images/logo.png',
        ),
      )
    );
  }
}


class ChannelSearchNavBarMiddle extends StatelessWidget {
  const ChannelSearchNavBarMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchChannelBar();
  }
}

class OthersNavBarLeading extends StatelessWidget {
  const OthersNavBarLeading({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        controller.animateToPage(ChannelProgressPage.channel, 
          duration: const Duration(milliseconds: 200), 
          curve: Curves.linear
        );
      },
      child:Icon(
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
