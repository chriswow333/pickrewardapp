import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_category.dart';
import 'package:pickrewardapp/channel_search/model/channel_global_key.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class ChannelItemGroups extends StatefulWidget {
  const ChannelItemGroups({super.key});

  @override
  State<ChannelItemGroups> createState() => _ChannelItemGroupsState();
}

class _ChannelItemGroupsState extends State<ChannelItemGroups> {

  final ScrollController _controller = ScrollController();

  @override 
  void initState(){
    _controller.addListener(() {});
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
              ChannelLabelItemGroup(channelViewModel: channelViewModel,),
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
    widget.channelViewModel.initChannelModels(widget.channelCategoryTypeModel.categoryType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    int channelCategoryType = widget.channelCategoryTypeModel.categoryType;
    
    List<ChannelItemModel> channelItemModels = widget.channelViewModel.getChannelsByChannelCategoryType(channelCategoryType);

    bool hasMore = widget.channelViewModel.hasMoreChannels(channelCategoryType);

    return Container(
      key: widget.channelViewModel.getChannelItemGlobalKeys(channelCategoryType),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
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
            GridView.builder(
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              itemCount: channelItemModels.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelItem(channelItemModel:channelItemModels[index]);
              }
            ),
            if(hasMore)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                AddMore(channelCategory: channelCategoryType,),
              ]
            )
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
    
    return InkWell(
      onTap: (){
        channelViewModel.addMoreChannelsByChannelCategoryType(channelCategory);
      },
      child:Container(
        padding: EdgeInsets.only(top:20),
        child:Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color:Palette.kToBlack[200]!,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child:Text("查看更多",
            style: TextStyle(
              fontSize: 12,
              color:Palette.kToBlack[500],
              fontWeight: FontWeight.bold,
            ),
          )
        )
      )
    );
  }
}



class ChannelLabelItemGroup extends StatefulWidget {
  const ChannelLabelItemGroup({super.key, required this.channelViewModel});

    final ChannelViewModel channelViewModel;

  
  @override
  State<ChannelLabelItemGroup> createState() => _ChannelLabelItemGroupState();
}

class _ChannelLabelItemGroupState extends State<ChannelLabelItemGroup> {
  
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
      padding: const EdgeInsets.only(left:10, right:10, top:10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Palette.kToBlack[0],
      ),
      child:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              children:[
                Text('猜你常用',
                  style:TextStyle(
                    color:Palette.kToBlack[600],
                    fontSize: 18,
                  ),
                ),
              ]
            ),
            const SizedBox(height: 20,),
            GridView.builder(
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              itemCount: channelViewModel.channelLabelModels.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 0,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelLabelItem(labelItemModel:channelViewModel.channelLabelModels[index]);
              }
            ),
          ]
        ),
      )
    );
  }
}


class ChannelLabelItem extends StatelessWidget {
  const ChannelLabelItem({super.key, required this.labelItemModel});
  
  final ChannelLabelModel labelItemModel;

  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    return Container(
      child:TextButton(
        style:const ButtonStyle(
          alignment: Alignment.topLeft,
          splashFactory:NoSplash.splashFactory,
          padding: MaterialStatePropertyAll(
            EdgeInsets.zero,
          )
        ),
        onPressed:(){
          criteriaViewModel.channelLabel =  labelItemModel;          
        },
        child:ChannelLabelItemName(channelLabelModel:labelItemModel),
      )
    );
  }
}


class ChannelLabelItemName extends StatelessWidget {
  const ChannelLabelItemName({super.key, required this.channelLabelModel});

  final ChannelLabelModel channelLabelModel;

  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    bool selected = criteriaViewModel.existChannelLabel(channelLabelModel.label);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: selected?Palette.kToYellow[300]!:Palette.kToBlack[20]!,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child:FittedBox(
        child:Text(
          channelLabelModel.name,
          style:TextStyle(
            color: Palette.kToBlack[600],
            fontSize: 14,
          ),
        )
      )
    );
  }
}

class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    return TextButton(
      style:const ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed:(){
        criteriaViewModel.channel = channelItemModel;
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left:2, right:2),
        child:Column(
          children:[
            Expanded(
              child:ChannelItemIcon(channelItemModel:channelItemModel),
            ),
            ChannelItemName(name:channelItemModel.name),
          ],
        ),
      ),
    );
  }
}


class ChannelItemIcon extends StatelessWidget {
  const ChannelItemIcon({super.key, required this.channelItemModel});
  
  final ChannelItemModel channelItemModel;
  
  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    bool selected = criteriaViewModel.existChannel(channelItemModel.id);

    return Stack(
      alignment:Alignment.center,
      children:[
        CircleAvatar(
          radius:14,
          backgroundColor:Palette.kToBlack[0],
          child:channelItemModel.image.isEmpty?
          Container()
          :
          Image.memory(
            gaplessPlayback: true,
            base64Decode(channelItemModel.image), 
            width:35,
            height:35,
          ),
        ),
        Container(
          decoration: selected?BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Palette.kToYellow[300]!,
            ),
            shape: BoxShape.circle,
          ):null,
          width: 50,
          height: 50,
        ),
      ]
    );
  }
}


class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height:20,
      child:FittedBox(
        fit: BoxFit.fitWidth, 
        child:Text(
          name,
          style:TextStyle(
            color: Palette.kToBlack[600],
          ),
        )
      )
    );
    ;
  }
}

