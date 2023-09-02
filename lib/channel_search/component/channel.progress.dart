import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

import 'package:provider/provider.dart';



class RewardProgressBar extends StatelessWidget {
  const RewardProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(),
        ProgressArrow(),
        FindCardProgressItem(),
        ProgressArrow(),
        FindResultProgressItem(),
      ],
    );
  }
}


class FindResultProgressItem extends StatelessWidget {
  const FindResultProgressItem({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelProgressViewModel channelProgressViewModel = Provider.of<ChannelProgressViewModel>(context);

    return TextButton(
      onPressed: (){
        channelProgressViewModel.progress = ChannelProgressEnum.FindResult;
      },
      style:ButtonStyle(
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          channelProgressViewModel.progress == ChannelProgressEnum.FindResult ? Palette.kToBlue[600]: Palette.kToBlue[50]
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
          color:channelProgressViewModel.progress == ChannelProgressEnum.FindResult ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

class FindCardProgressItem extends StatelessWidget {
  const FindCardProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    
    ChannelProgressViewModel channelProgressViewModel = Provider.of<ChannelProgressViewModel>(context);
    
    return TextButton(
      onPressed: (){
        channelProgressViewModel.progress = ChannelProgressEnum.FindCard;
      },
      style:ButtonStyle(
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          channelProgressViewModel.progress == ChannelProgressEnum.FindCard ? Palette.kToBlue[600]:Palette.kToBlue[50]
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
          color:channelProgressViewModel.progress == ChannelProgressEnum.FindCard ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

class ProgressArrow extends StatelessWidget {
  const ProgressArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        Icons.double_arrow_rounded,
        color:Palette.kToBlue[100],
        size:40,
        weight: 10,
      ),
    );
  }
}
class ChannelProgressItem extends StatelessWidget {
  const ChannelProgressItem({super.key});

  @override
  Widget build(BuildContext context) {

    ChannelProgressViewModel channelProgressViewModel = Provider.of<ChannelProgressViewModel>(context);
    return TextButton(
      onPressed: (){
        channelProgressViewModel.progress = ChannelProgressEnum.Channel; 
      },
      style:ButtonStyle(
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          channelProgressViewModel.progress == ChannelProgressEnum.Channel ? Palette.kToBlue[600]:Palette.kToBlue[50]
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
          color:channelProgressViewModel.progress == ChannelProgressEnum.Channel ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}

