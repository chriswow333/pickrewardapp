import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class RewardProgressBar extends StatelessWidget {
  const RewardProgressBar({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(controller: controller,),
        ProgressArrowToFindCard(),
        FindCardProgressItem(controller: controller,),
        ProgressArrowToResult(),
        FindResultProgressItem(controller: controller,),
      ],
    );
  }
}


class FindResultProgressItem extends StatelessWidget {
  const FindResultProgressItem({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    return TextButton(
      onPressed: (){
        FocusScope.of(context).unfocus();
        controller.jumpToPage(ChannelProgressPage.result);
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          channelProgressSelectedPage.page == ChannelProgressPage.result ? Palette.kToBlue[600]: Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '搜尋結果',
        style: TextStyle(
          fontSize: 20,
          color:channelProgressSelectedPage.page == ChannelProgressPage.result ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

class FindCardProgressItem extends StatelessWidget {
  const FindCardProgressItem({super.key, required this.controller});
  
  final PageController controller;
  
  @override
  Widget build(BuildContext context) {
    
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);
    
    return TextButton(
      onPressed: (){
        FocusScope.of(context).unfocus();
        controller.jumpToPage(ChannelProgressPage.findCard);
      },
      style:ButtonStyle(
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          channelProgressSelectedPage.page == ChannelProgressPage.findCard ? Palette.kToBlue[600]:Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '找卡片',
        style: TextStyle(
          fontSize: 20,
          color:channelProgressSelectedPage.page == ChannelProgressPage.findCard ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

class ProgressArrowToFindCard extends StatelessWidget {
  const ProgressArrowToFindCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool selected = channelIDLength + labelLength > 0;

    return Container(
      child:Icon(
        Icons.double_arrow_rounded,
        color:selected ? Palette.kToBlue[600]:Palette.kToBlue[100],
        size:40,
        weight: 10,
      ),
    );
  }
}


class ProgressArrowToResult extends StatelessWidget {
  const ProgressArrowToResult({super.key});

  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    bool flag = rewardSelectedViewModel.alreadyFindCardOnce;
    return Container(
      child:Icon(
        Icons.double_arrow_rounded,
        color:flag ? Palette.kToBlue[600]:Palette.kToBlue[100],
        size:40,
        weight: 10,
      ),
    );
  }
}

class ChannelProgressItem extends StatelessWidget {
  const ChannelProgressItem({super.key, required this.controller});
  
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    return TextButton(
      onPressed: (){
        // channelProgressSelectedPage.changePage(ChannelProgressPage.channel);
        controller.jumpToPage(ChannelProgressPage.channel);
      },
      style:ButtonStyle(
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          channelProgressSelectedPage.page == ChannelProgressPage.channel ? Palette.kToBlue[600]:Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '消費通路',
        style: TextStyle(
          fontSize: 20,
           color: channelProgressSelectedPage.page == ChannelProgressPage.channel ?  Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

