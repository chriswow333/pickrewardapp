import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.selectedbar.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.criteria.date.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.criteria.pay.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.criteria.rewardnlabel.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class CriteriaProgress extends StatelessWidget {
  const CriteriaProgress({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left:5,right:5),
      child:Column(
        children:[
          CriteriaProgressTitle(controller: controller,),
          const SizedBox(height:20),
          const ChannelSelectedItems(),
          const SizedBox(height:20),
          const Expanded(
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CriteriaMessage(),
                  SizedBox(height:20),
                  DateWidget(),
                  SizedBox(height:20),
                  PayWidget(),
                  SizedBox(height:20),
                  RewardTypeAndTaskLabelWidget(),
                ],
              )
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            child:SelectedChannelResult(controller: controller,),
          )
        ]
      )
    );
  }
}

class CriteriaProgressTitle extends StatelessWidget {
  
  const CriteriaProgressTitle({super.key, required this.controller});
  
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Stack(
        children:[
          InkWell(
            onTap:(){
              controller.animateToPage(ChannelProgressPage.channel, 
                duration: const Duration(milliseconds: 200), 
                curve: Curves.linear
              );
            },
            child:const Icon(
              Icons.arrow_back_ios_new
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('查詢高回饋信用卡',
                style: TextStyle(
                  fontSize: 18,
                  color:Palette.kToBlack[500],
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ),
        ]
      )
    );
  }
}

class ChannelSelectedItems extends StatelessWidget {
  const ChannelSelectedItems({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    List<String> channelNames = criteriaViewModel.channelItemModels.map((e) => e.name).toList();
    List<String> selectedNames = criteriaViewModel.channelLabels.map((e) => e.name).toList();

    selectedNames.addAll(channelNames);
    String names = selectedNames.join(", ");


    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color:Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(20),
      ),
      child:Row(
        children:[
          Container(
            padding: const EdgeInsets.only(right:20),
            child:const Text('已選通路',
              style:TextStyle(
                fontSize: 14,
              )
            ),
          ),
          Expanded(
            child:Container(
              alignment: Alignment.centerRight,
              child:Text(names,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}


class CriteriaMessage extends StatelessWidget {
  const CriteriaMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:20),
      child:Text('還差一步! 請確認搜尋條件',
        style: TextStyle(
          fontSize: 22,
          color:Palette.kToBlack[500],
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}


