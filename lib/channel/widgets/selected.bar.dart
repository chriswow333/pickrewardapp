


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel/model/channel.dart';

import 'package:pickrewardapp/channel/viewmodel/progress.dart';
import 'package:pickrewardapp/channel/viewmodel/eventresult.dart';
import 'package:pickrewardapp/channel/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SelectedChannelResult extends StatelessWidget {
  const SelectedChannelResult({super.key, required this.controller});
  final PageController controller;


  @override
  Widget build(BuildContext context) {

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

    if(channelProgressSelectedPage.page == ChannelProgressPageModel.channel){
      return ChannelPageBar(controller: controller,);
    }else if (channelProgressSelectedPage.page == ChannelProgressPageModel.criteria){
      return CriteriaPageBar(controller: controller,);
    }

    return Container();
  }
}


class CriteriaPageBar extends StatelessWidget {
  const CriteriaPageBar({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context,listen:false);


    int channelIDLength = criteriaViewModel.getChannelIDs().length;
    int labelLength = criteriaViewModel.channelLabels.length;
    
    bool channelSelected = channelIDLength + labelLength > 0;

    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children:[
              GestureDetector(
                onTap: () {  
                  criteriaViewModel.resetCriteriaPage();
                },
                child:const Icon(
                  Icons.cancel_outlined,
                ),
              ),
              const SizedBox(width:5),
              const Text('清除已選條件')
            ]
          ),
          const SizedBox(width:10),

          GestureDetector(
            onTap:(){

              if(channelSelected){
                cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);
                FocusScope.of(context).unfocus();
                controller.animateToPage(
                  ChannelProgressPageModel.result, 
                  duration: const Duration(milliseconds: 150), 
                  curve: Curves.linear
                );
              }
                
              },
            child:Container(
              decoration: BoxDecoration(
                color: channelSelected?Palette.kToBlack[600]:Palette.kToBlack[50],
                borderRadius:const BorderRadius.all(Radius.circular(12.0)),
              ),
              padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 16,
                ),
              )
            ),
          ),
        ]
      )
    );
  }
}



class ChannelPageBar extends StatelessWidget {
  const ChannelPageBar({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    int channelIDLength = criteriaViewModel.getChannelIDs().length;
    int labelLength = criteriaViewModel.channelLabels.length;
    
    bool channelSelected = channelIDLength + labelLength > 0;

    return Container(
      child:Row(
        children:[
          if(!channelSelected)
            Expanded(
              child:Container(
                child:Text('請選擇您常消費通路',
                  style: TextStyle(
                    fontSize: 16,
                    color:Palette.kToBlack[500],
                  ),
                )
              ),
            ),

          if(channelSelected)
            Expanded(
              child:Container(
                child:Row(
                  children:[
                    GestureDetector(
                      onTap:(){
                        criteriaViewModel.resetChannelAndChannelLabels();
                      },
                      child:const Icon(
                        Icons.cancel_outlined,
                      ),
                    ),
                    const SizedBox(width:5),
                    Text('已選${channelIDLength + labelLength}個通路。'),
                    const SizedBox(width:5),
                    GestureDetector(
                      onTap:(){
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Palette.kToBlack[10],
                          useSafeArea:true,
                          scrollControlDisabledMaxHeightRatio:0.75,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                            ),
                          builder: (_) {
                            return ListenableProvider.value(
                              value:criteriaViewModel,
                              child:SafeArea(
                                child:SelectedChannelContent(criteriaViewModel:criteriaViewModel)
                              ),
                            );
                          },
                        );                      
                      },
                      child:Text('查看全部',
                        style: TextStyle(
                          color: Palette.kToYellow[400],
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ),
                  ]
                )
              ),
            ),
          
          GestureDetector(
            onTap:(){
              if(channelSelected){
                FocusScope.of(context).unfocus();
                controller.animateToPage(
                  ChannelProgressPageModel.criteria, 
                  duration: const Duration(milliseconds: 150), 
                  curve: Curves.linear
                );
              }
            },
            child:Container(
              decoration: BoxDecoration(
                color: channelSelected?Palette.kToBlack[600]:Palette.kToBlack[50],
                borderRadius:const BorderRadius.all(Radius.circular(12.0)),
              ),
              padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
              child:Text('下一步',
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 16,
                ),
              )
            ),
          )
        ]
      )
    );
  }
}


class SelectedChannelContent extends StatefulWidget {
  const SelectedChannelContent({super.key, required this.criteriaViewModel});
  
  final CriteriaViewModel criteriaViewModel;

  @override
  State<SelectedChannelContent> createState() => _SelectedChannelContentState();
}

class _SelectedChannelContentState extends State<SelectedChannelContent> {

  Set<String> tryDeleteChannel = {};
  Set<String> tryDeleteChannelLabel = {};


  @override
  void initState(){
    super.initState();
  }

  bool toggleChannelLabel(String label) {
    setState(() {
      if(tryDeleteChannelLabel.contains(label)){
        tryDeleteChannelLabel.remove(label);
      }else {
        tryDeleteChannelLabel.add(label);
      }
    });
    return !tryDeleteChannelLabel.contains(label);
  }

  bool toggleChannel(String channelID) {
    setState(() {
      if(tryDeleteChannel.contains(channelID)){
        tryDeleteChannel.remove(channelID);
      }else {
        tryDeleteChannel.add(channelID);
      }
    });
    return !tryDeleteChannel.contains(channelID);
  }

  @override
  Widget build(BuildContext context) {

    int total = widget.criteriaViewModel.channelLabels.length + widget.criteriaViewModel.channelItemModels.length;
    total = total - tryDeleteChannelLabel.length - tryDeleteChannel.length;

    return Container(
      padding: const EdgeInsets.all(20),
      child:Column(
        children:[
          SelectedChannelHeader(total:total, tryDeleteChannel: tryDeleteChannel, tryDeleteChannelLabel: tryDeleteChannelLabel,),
          const SizedBox(height: 10,),
          Expanded(
            child:SelectedChannelItems(
              criteriaViewModel: widget.criteriaViewModel,
              toggleSelectedChannel: toggleChannel, 
              toggleSelectedChannelLabel:toggleChannelLabel,
            ),
          ),
          SelectedChannelBtn(
            criteriaViewModel: widget.criteriaViewModel,
            tryDeleteChannel: tryDeleteChannel, 
            tryDeleteChannelLabel: tryDeleteChannelLabel,
          ),
          
        ]
      )
    );
  }
}


class SelectedChannelBtn extends StatelessWidget {
  const SelectedChannelBtn({
    super.key, 
    required this.criteriaViewModel, 
    required this.tryDeleteChannel, 
    required this.tryDeleteChannelLabel
  });
  
  final CriteriaViewModel criteriaViewModel;
  final Set<String> tryDeleteChannel;
  final Set<String> tryDeleteChannelLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top:30, left:20, right:20),
      
      child:GestureDetector(
        onTap: (){
          criteriaViewModel.removeChannels(tryDeleteChannel.toList());
          criteriaViewModel.removeChannelLabels(tryDeleteChannelLabel.toList());
          Navigator.pop(context);
        },
        child:Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:Palette.kToYellow[500],
            borderRadius: BorderRadius.circular(15),
          ),
          child:Text('儲存',
            style: TextStyle(
              color:Palette.kToBlack[0],
              fontSize: 20,
            ),
          )
        )
      )
    );
  }
}

class SelectedChannelItems extends StatelessWidget {
  const SelectedChannelItems({
    super.key, required this.criteriaViewModel, 
    required this.toggleSelectedChannel, 
    required this.toggleSelectedChannelLabel
});

  final CriteriaViewModel criteriaViewModel;
  final bool Function(String selectedChannel) toggleSelectedChannel;
  final bool Function(String selectedLabel) toggleSelectedChannelLabel;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:SingleChildScrollView(
        child:Column(
          children:[
            for(ShowLabelModel channelLabelModel in criteriaViewModel.channelLabels)
              SelectedChannelLabelItem(channelLabelModel: channelLabelModel, toggleSelectedChannelLabel:toggleSelectedChannelLabel),
            for(ChannelItemModel channelItemModel in criteriaViewModel.channelItemModels)
              SelectedChannelItem(channelItemModel: channelItemModel, toggleSelectedChannel:toggleSelectedChannel),
          ]
        )
      ),
      
    );
  }
}


class SelectedChannelItem extends StatefulWidget {
  const SelectedChannelItem({super.key, required this.channelItemModel, required this.toggleSelectedChannel});
  final ChannelItemModel channelItemModel;
  final bool Function(String channelID) toggleSelectedChannel;

  @override
  State<SelectedChannelItem> createState() => _SelectedChannelItemState();
}

class _SelectedChannelItemState extends State<SelectedChannelItem> {

  bool selected = true;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(5),
      child:Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Palette.kToBlack[0]
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text(widget.channelItemModel.name,
              style: TextStyle(
                fontSize: 14,
                color: Palette.kToBlack[600]                
              ),
            ),

            GestureDetector(
              behavior:HitTestBehavior.opaque,
              onTap:(){
                selected = widget.toggleSelectedChannel(widget.channelItemModel.id);
              },

              child:selected ? Container(
                padding: const EdgeInsets.only(top:5,bottom:5, left:10, right:10),
                decoration: BoxDecoration(
                  color: Palette.kToYellow[500],
                  borderRadius:BorderRadius.circular(20),
                ),
                child:Row(
                  children:[
                    Icon(
                      Icons.check_circle_sharp,
                      color:Palette.kToBlack[0],
                      size: 15,
                    ),
                    const SizedBox(width: 2,),
                    Text('已選取',
                      style: TextStyle(
                        color:Palette.kToBlack[0],
                      ),
                    ),
                  ],
                ),
              ):
              Container(
                padding: const EdgeInsets.only(top:5,bottom:5, left:10, right:10),
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.kToBlack[400],
                  borderRadius:BorderRadius.circular(20),
                ),
                child:Text('選取',
                  style: TextStyle(
                    color:Palette.kToBlack[0],
                  ),
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}



class SelectedChannelLabelItem extends StatefulWidget {
  const SelectedChannelLabelItem({super.key, required this.channelLabelModel, required this.toggleSelectedChannelLabel});
  final ShowLabelModel channelLabelModel;
  final bool Function(String selectedLabel) toggleSelectedChannelLabel;
  @override
  State<SelectedChannelLabelItem> createState() => _SelectedChannelLabelItemState();
}

class _SelectedChannelLabelItemState extends State<SelectedChannelLabelItem> {

  bool selected = true;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(5),
      child:Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Palette.kToBlack[0]
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text(widget.channelLabelModel.name,
              style: TextStyle(
                fontSize: 14,
                color: Palette.kToBlack[600]                
              ),
            ),

            GestureDetector(
              behavior:HitTestBehavior.opaque,
              onTap:(){
                selected = widget.toggleSelectedChannelLabel(widget.channelLabelModel.label);
              },

              child:selected ? Container(
                padding: const EdgeInsets.only(top:5,bottom:5, left:10, right:10),
                decoration: BoxDecoration(
                  color: Palette.kToYellow[500],
                  borderRadius:BorderRadius.circular(20),
                ),
                child:Row(
                  children:[
                    Icon(
                      Icons.check_circle_sharp,
                      color:Palette.kToBlack[0],
                      size: 15,
                    ),
                    const SizedBox(width: 2,),
                    Text('已選取',
                      style: TextStyle(
                        color:Palette.kToBlack[0],
                      ),
                    ),
                  ],
                ),
              ):
              Container(
                padding: const EdgeInsets.only(top:5,bottom:5, left:10, right:10),
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.kToBlack[400],
                  borderRadius:BorderRadius.circular(20),
                ),
                child:Text('選取',
                  style: TextStyle(
                    color:Palette.kToBlack[0],
                  ),
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}



class SelectedChannelHeader extends StatelessWidget {
  const SelectedChannelHeader({super.key, required this.tryDeleteChannel, required this.tryDeleteChannelLabel, required this.total});

  final int total;
  final Set<String> tryDeleteChannel;
  final Set<String> tryDeleteChannelLabel;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('已選 $total 個通路',
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color:Palette.kToBlack[500],
            )
          ),

          GestureDetector(
            onTap:(){
              Navigator.pop(context);
            },
            child:Icon(
              Icons.cancel_outlined,
              color:Palette.kToBlack[500],
            )
          )
        ]
      )
    );
  }
}