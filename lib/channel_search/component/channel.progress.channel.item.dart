import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/viewmodel/label.item.dart';
import 'package:provider/provider.dart';


import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';
import 'package:visibility_detector/visibility_detector.dart';



class ChannelItemGroups extends StatefulWidget {
  const ChannelItemGroups({super.key});

  @override
  State<ChannelItemGroups> createState() => _ChannelItemGroupsState();
}

class _ChannelItemGroupsState extends State<ChannelItemGroups> {

  final ScrollController _controller = ScrollController();

  @override 
  void initState(){
    _controller.addListener(() {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    List<ChannelCategoryTypeModel> channelCategoryTypes = channelViewModel.channelCategoryTypeModels;
    List<ChannelGlobalKeyModel> keyModels = channelViewModel.getAllChannelItemGlobalKeyModels();

    return Container(
      child:NotificationListener(
        onNotification: (ScrollNotification notification){
          if (notification is UserScrollNotification) {
            // _onUserScrolled(notification.metrics.pixels);
            double totalItemHeight = 0;
            for(ChannelGlobalKeyModel k in keyModels) {
              totalItemHeight += k.channelItem.currentContext!.size!.height;
              if(notification.metrics.pixels < totalItemHeight) {
                channelViewModel.channelCategoryType = k.id;
                Scrollable.ensureVisible(channelViewModel.getChannelCategoryGlobalKeys(k.id).currentContext!,
                  duration:Duration(milliseconds: 300),
                );
                break;
              }
            }
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: _controller,
          child:Wrap(
            runSpacing: 25,
            children:[
              LabelItemGroup(channelViewModel: channelViewModel,),
              for(ChannelCategoryTypeModel c in channelCategoryTypes)
                ChannelItemGroup(channelCategoryTypeModel: c, channelViewModel: channelViewModel,),
            ]
          )
        )
      )
    );
  }
}


class ChannelItemGroup extends StatefulWidget {
  const ChannelItemGroup({super.key, required this.channelCategoryTypeModel, required this.channelViewModel,});
  
  final ChannelCategoryTypeModel channelCategoryTypeModel;
  final ChannelViewModel channelViewModel;
  
  @override
  State<ChannelItemGroup> createState() => _ChannelItemGroupState();
}

class _ChannelItemGroupState extends State<ChannelItemGroup> {

  @override
  void initState(){
    widget.channelViewModel.initChannelModels(widget.channelCategoryTypeModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    int channelCategoryType = widget.channelCategoryTypeModel.id;
    
    List<ChannelItemModel> channelItemModels = widget.channelViewModel.getChannelsByChannelCategoryType(channelCategoryType);

    bool hasMore = widget.channelViewModel.hasMoreChannels(channelCategoryType);

    return Container(
      key: widget.channelViewModel.getChannelItemGlobalKeys(channelCategoryType),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(widget.channelCategoryTypeModel.name,
              style:TextStyle(
                color:Palette.kToBlack[600],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10,),
            GridView.count(  
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              crossAxisCount: 4,  
              crossAxisSpacing: 15.0,  
              mainAxisSpacing: 15.0,
              padding: EdgeInsets.zero,  
              children:[
                for(ChannelItemModel channelItemModel in channelItemModels)
                  ChannelItem(channelItemModel:channelItemModel),
                if(hasMore)
                  AddMore(channelCategory: channelCategoryType,),
              ],
            ),
          ]
        ),
      )
    );
  }
}


class AddMore extends StatelessWidget {
  const AddMore({super.key, required this.channelCategory});
  
  final int channelCategory;

  @override
  Widget build(BuildContext context) {
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

    return TextButton(
      onPressed: (){
        channelViewModel.addMoreChannelsByChannelCategoryType(channelCategory);
      },
      child:Text("更多",
        style: TextStyle(
          fontSize: 16,
          color:Palette.kToBlack[200],
        ),
      )
    );
  }
}



class LabelItemGroup extends StatefulWidget {
  const LabelItemGroup({super.key, required this.channelViewModel});

    final ChannelViewModel channelViewModel;

  
  @override
  State<LabelItemGroup> createState() => _LabelItemGroupState();
}

class _LabelItemGroupState extends State<LabelItemGroup> {
  
  @override
  void initState(){
    widget.channelViewModel.initChannelModels(-1);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    return Container(
      key: channelViewModel.getChannelItemGlobalKeys(-1),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('通路總覽',
              style:TextStyle(
                color:Palette.kToBlack[600],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10,),
            GridView.count(  
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              crossAxisCount: 4,  
              crossAxisSpacing: 15.0,  
              mainAxisSpacing: 15.0,
              padding: EdgeInsets.zero,  
              children:[
                for(LabelItemModel l in LabelItemModel.getAll())
                  LabelItem(labelItemModel: l,),
              ],
            ),
          ]
        ),
      )
    );
  }
}



class LabelItem extends StatelessWidget {
  const LabelItem({super.key, required this.labelItemModel});
  
  final LabelItemModel labelItemModel;

  @override
  Widget build(BuildContext context) {
    
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    bool selected = rewardSelectedViewModel.existSelectedLabelID(labelItemModel.id);

    return TextButton(
        style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        side:selected?
        MaterialStatePropertyAll(
          BorderSide(
            color:Palette.kToBlue[600]!,
            width: 1,
          )
        ):null,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed:(){
      rewardSelectedViewModel.labelIDs =  labelItemModel.id;          
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left:2, right:2),
        child:Column(
          children:[
            LabelItemIcon(id:labelItemModel.id),
            LabelItemName(name:labelItemModel.name),
          ],
        ),
      ),
    );
  }
}


class LabelItemIcon extends StatelessWidget {
  const LabelItemIcon({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    IconData iconData = Icons.filter_none;
    switch (id) {
      case 0:
        iconData = Icons.horizontal_split_outlined;
        break;
      case 1:
        iconData = Icons.home_outlined;
        break;
      case 2:
        iconData = Icons.airplane_ticket_outlined;
        break;
    }

    return Container(
      child:Icon(
        color:Palette.kToBlack[200],
        iconData,
        size:40,
      )
    );
  }
}


class LabelItemName extends StatelessWidget {
  const LabelItemName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        name,
        style:TextStyle(
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}

class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    
    bool selected = rewardSelectedViewModel.existSelectedChannelID(channelItemModel.id);

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        side:selected?
        MaterialStatePropertyAll(
          BorderSide(
            color:Palette.kToBlue[600]!,
            width: 1,
          )
        ):null,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed:(){
        rewardSelectedViewModel.channelID = channelItemModel.id;
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left:2, right:2),
        child:Column(
          children:[
            ChannelItemIcon(image:channelItemModel.image),
            ChannelItemName(name:channelItemModel.name),
          ],
        ),
      ),
    );
  }
}



class ChannelItemIcon extends StatelessWidget {
  const ChannelItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:70,
        height:50,
      ),
    );
  }
}


class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        name,
        style:TextStyle(
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}

