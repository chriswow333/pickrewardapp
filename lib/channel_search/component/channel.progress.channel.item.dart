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
    List<GlobalKey> keys = channelViewModel.getAllChannelItemGlobalKeys();

    return NotificationListener(
      onNotification: (ScrollNotification notification){
        if (notification is UserScrollNotification) {
          // _onUserScrolled(notification.metrics.pixels);
          double totalItemHeight = 0;

          for(int i = 0; i < keys.length; i++) {
            totalItemHeight += keys[i].currentContext!.size!.height;
            if(notification.metrics.pixels < totalItemHeight) {
              channelViewModel.channelCategoryType = i;
              Scrollable.ensureVisible(channelViewModel.getChannelCategoryGlobalKeys(i).currentContext!,
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
        child:Column(
          children:[
            for(ChannelCategoryTypeModel c in channelCategoryTypes)
              ChannelItemGroup(channelCategoryTypeModel: c, channelViewModel: channelViewModel,),
          ]
        )
      )
    )
    ;
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
        padding:const EdgeInsets.only(bottom: 10),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(widget.channelCategoryTypeModel.name),
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
    );

    return VisibilityDetector(
      key: widget.channelViewModel.getChannelItemGlobalKeys(channelCategoryType),
      onVisibilityChanged: (VisibilityInfo info) {  
        
        if ( info.visibleFraction == 1) {
          Scrollable.ensureVisible(widget.channelViewModel.getChannelCategoryGlobalKeys(channelCategoryType).currentContext!,
            duration:Duration(milliseconds: 300),
            alignmentPolicy:ScrollPositionAlignmentPolicy.explicit,
          );
          widget.channelViewModel.channelCategoryType = widget.channelViewModel.findVisibleChannelCategory(info.key);
        }
        
        print(channelCategoryType.toString() + " " + info.visibleBounds.toString());
        // print(channelCategoryType.toString() + " " +"toptoptopt : " + info.visibleBounds.center.toString());
        // print(channelCategoryType.toString() + " " +info.visibleFraction.toString());
        // if(info.visibleBounds.top == 0.1) {
          
        // }
        
      },
      child:Container(
        padding:const EdgeInsets.only(bottom: 10),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(widget.channelCategoryTypeModel.name),
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
      child:Text("更多")
    );
  }
}


// class ChannelItems extends StatelessWidget {
//   const ChannelItems({super.key});

//   @override
//   Widget build(BuildContext context) {

//     ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
//     return ChannelItemsWidget(channelViewModel:channelViewModel,);

//   }
// }


// class ChannelItemsWidget extends StatefulWidget {
//   const ChannelItemsWidget({super.key, required this.channelViewModel,});
//   final ChannelViewModel channelViewModel;

//   @override
//   State<ChannelItemsWidget> createState() => _ChannelItemsWidgetState();
// }

// class _ChannelItemsWidgetState extends State<ChannelItemsWidget> {

//   final ScrollController _controller = ScrollController(
//     keepScrollOffset:false,
//   );

//   void scrollFn(){
//     if (_controller.offset >= _controller.position.maxScrollExtent && !_controller.position.outOfRange) {
//       setState(() {
//         widget.channelViewModel.fetchChannelsByChannelCategoryType(_type);
//       });
//     }

//   } 

//   @override
//   void initState(){
//     _controller.addListener(scrollFn);
//     super.initState();
//   }

//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }

//   int _type = -1;

//   @override
//   Widget build(BuildContext context) {

//     int type = widget.channelViewModel.channelCategoryType;
//     setState(() {
//       if(_type != type) {
//         widget.channelViewModel.initChannelsByChannelCategoryType(type);
//       }
//       _type = type;
//     });

//     if (type != -1) {
      
//       List<ChannelItemModel> channelItems = widget.channelViewModel.getChannelsByChannelCategoryType(type);

//       return Container(
//         child:GridView.count(  
//             controller: _controller,
//             crossAxisCount: 4,  
//             crossAxisSpacing: 15.0,  
//             mainAxisSpacing: 15.0,
//             padding: EdgeInsets.zero,  
//             children:[
//               for(ChannelItemModel channelItemModel in channelItems)
//                 ChannelItem(channelItemModel:channelItemModel),
//             ],
//           ),
        
//       );
//     }else {
//       // 通路總覽
//       return Container(
//         height:MediaQuery.of(context).size.height - 383,
//         child:GridView.count(  
//           crossAxisCount: 4,  
//           crossAxisSpacing: 15.0,  
//           mainAxisSpacing: 15.0,
//           padding: EdgeInsets.zero,  
//           children:[
//             for(LabelItemModel labelItemModel in LabelItemModel.getAll())
//               LabelItem(labelItemModel:labelItemModel),
//           ],
//         ),
//       );
//     }
//   }
// }


// class ChannelItems extends StatelessWidget {
//   const ChannelItems({super.key});


//   @override
//   Widget build(BuildContext context) {

//     ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);

//     int type = channelViewModel.channelCategoryType;
    
//     if (type != -1) {
      
//       List<ChannelItemModel> channelItemModels = channelViewModel.getChannelsByChannelCategoryType(type, 0);

//       return Container(
//         height:MediaQuery.of(context).size.height - 383,
//         child:GridView.count(  
//             crossAxisCount: 4,  
//             crossAxisSpacing: 15.0,  
//             mainAxisSpacing: 15.0,
//             padding: EdgeInsets.zero,  
//             children:[
//               for(ChannelItemModel channelItemModel in channelItemModels ?? [])
//                 ChannelItem(channelItemModel:channelItemModel),
//             ],
//           ),
        
//       );
//     }else {
//       // 通路總覽
//       return Container(
//         height:MediaQuery.of(context).size.height - 383,
//         child:GridView.count(  
//           crossAxisCount: 4,  
//           crossAxisSpacing: 15.0,  
//           mainAxisSpacing: 15.0,
//           padding: EdgeInsets.zero,  
//           children:[
//             for(LabelItemModel labelItemModel in LabelItemModel.getAll())
//               LabelItem(labelItemModel:labelItemModel),
//           ],
//         ),
//       );
//     }
//   }
// }


class LabelItem extends StatelessWidget {
  const LabelItem({super.key, required this.labelItemModel});
  
  final LabelItemModel labelItemModel;

  @override
  Widget build(BuildContext context) {
    
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    bool selected = rewardSelectedViewModel.existSelectedLabelID(labelItemModel.id);

    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      border:selected? Border.all(
        color:Palette.kToBlue[800]!,
        width: 1.5,
      ):null,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 0.5)
          ),
        ],
      ),
      child:TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        
          padding:const MaterialStatePropertyAll(
            EdgeInsets.fromLTRB(0, 12, 0, 0),
          ),
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
      )
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

    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      border:selected? Border.all(
        color:Palette.kToBlue[800]!,
        width: 1.5,
      ):null,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 0.5)
          ),
        ],
      ),
      child:TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        
          padding:const MaterialStatePropertyAll(
            EdgeInsets.fromLTRB(0, 12, 0, 0),
          ),
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
      )
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

