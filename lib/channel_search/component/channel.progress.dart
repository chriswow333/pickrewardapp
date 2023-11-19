import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class ChannelProgressBar extends StatelessWidget {
  const ChannelProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:1),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            child:Stack(
              children:[
                Container(
                  height:20,
                  padding: const EdgeInsets.only(top:5, left:2, right:2,),
                  child:LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;
                      return Row(
                        children: [
                          ChannelLane(width: width,),
                          CostLane(width: width,),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      ChannelSpot(),
                      FindCardSpot(),
                      ResultSpot(),
                    ]
                  )
                ),
              ]
            ),
          ),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text('通路'),
                Text('消費'),
                Text('結果'),
              ]
            )
          )
        ]
      )
    );
  }
}

class ResultSpot extends StatelessWidget {
  const ResultSpot({super.key});

  @override
  Widget build(BuildContext context) {
    
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);

    bool sendedFindCard = rewardSelectedViewModel.sendedFindCard;

    if(sendedFindCard){

      return Container(
        width: 25.0, 
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:Palette.kToYellow[300]!,
          ),
          color: channelProgressSelectedPage.page == ChannelProgressPage.result ? 
          Palette.kToOrange[300]:Palette.kToBlack[0],
        ),
        child:Icon(
          Icons.check,
          color:channelProgressSelectedPage.page == ChannelProgressPage.result? 
            Palette.kToBlack[0]:Palette.kToOrange[300],
        )
      );
    }else {
      return Container(
        width: 25.0,
        height:25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: channelProgressSelectedPage.page == ChannelProgressPage.result ? 
            Palette.kToYellow[300]:Palette.kToBlack[20],
        ),
      );
    }
    
  }
}



class FindCardSpot extends StatelessWidget {
  const FindCardSpot({super.key});

  @override
  Widget build(BuildContext context) {
    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool channelSelected = channelIDLength + labelLength > 0;


    if(channelProgressSelectedPage.page == ChannelProgressPage.findCard) {
      return Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.kToYellow[300],
        ),
        child:channelSelected?Icon(
          Icons.check,
          color:Palette.kToBlack[0],
        ):Container(),
      );
    }else {
      return Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: channelSelected? Palette.kToBlack[0]:Palette.kToBlack[20],
          border: channelSelected?Border.all(
            color:Palette.kToYellow[300]!,
          ):null
        ),
        child:channelSelected?Icon(
          Icons.check,
          color:Palette.kToYellow[300],
        ):Container(),
      );
    }
  }
}


class ChannelSpot extends StatelessWidget {
  const ChannelSpot({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool channelSelected = channelIDLength + labelLength > 0;

    if(channelProgressSelectedPage.page == ChannelProgressPage.channel) {
      return Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.kToYellow[300],
        ),
        child:channelSelected?Icon(
          Icons.check,
          color:Palette.kToBlack[0],
        ):Container(),
      );
    }else {
      return Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: channelSelected? Palette.kToBlack[0]:Palette.kToBlack[20],
          border: channelSelected?Border.all(
            color:Palette.kToYellow[300]!,
          ):null
        ),
        child:channelSelected?Icon(
          Icons.check,
          color:Palette.kToYellow[300],
        ):Container(),
      );
    }
    
  }
}

class ChannelLane extends StatefulWidget {
  const ChannelLane({super.key, required this.width});
  final double width;

  @override
  State<ChannelLane> createState() => _ChannelLaneState();
}

class _ChannelLaneState extends State<ChannelLane> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _colorAnimation = _animationController.drive(
      ColorTween(
        begin: Palette.kToBlack[20],
        end: Palette.kToYellow[300],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int channelIDLength = rewardSelectedViewModel.getChannelIDs().length;
    int labelLength = rewardSelectedViewModel.getAllLabelIDs().length;
    bool channelSelected = channelIDLength + labelLength > 0;

     ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);


    if(channelSelected && channelProgressSelectedPage.page == ChannelProgressPage.findCard) {
      _animationController.forward();
    }else if(!channelSelected) {
      _animationController.reverse();
    }


    return Container(
      width: widget.width / 2,
      height: 10.0,
      child:AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return LinearProgressIndicator(
            value: _animationController.value,
            backgroundColor: Palette.kToBlack[20],
            valueColor: AlwaysStoppedAnimation<Color?>(_colorAnimation.value),
          );
        },
      )
    );
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}





class CostLane extends StatefulWidget {
  const CostLane({super.key, required this.width});
  final double width;

  @override
  State<CostLane> createState() => _CostLaneState();
}

class _CostLaneState extends State<CostLane> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _colorAnimation = _animationController.drive(
      ColorTween(
        begin: Palette.kToBlack[20],
        end: Palette.kToYellow[300],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    
    if(rewardSelectedViewModel.sendedFindCard){
      _animationController.forward();
    }else {
      _animationController.reverse();
    }


    return Container(
      width: widget.width / 2,
      height: 10.0,
      child:AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return LinearProgressIndicator(
            value: _animationController.value,
            backgroundColor: Palette.kToBlack[20],
            valueColor: AlwaysStoppedAnimation<Color?>(_colorAnimation.value),
          );
        },
      )
    );
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
