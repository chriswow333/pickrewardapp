


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.cost.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.result.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class EventResultProgress extends StatelessWidget {
  const EventResultProgress({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left:5, right:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EventResultProgressTitle(controller:controller),
          const SizedBox(height:10),
          const EvaluationCriteriaSelected(),
          const SizedBox(height:10),
          const EventResultMessage(),
          const SizedBox(height:20),
          const CriteriaCostWidget(),
          const SizedBox(height:10),
          const Expanded(
            child:SingleChildScrollView(
              child:CardEventResults(),
            )
          ),
          const SizedBox(height:20),
          Container(
            child:ReEvaluateItem(controller: controller,),
          )
        ]   
      ) 
    );
  }
}



class EventResultProgressTitle extends StatelessWidget {
  
  const EventResultProgressTitle({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Stack(
        children:[
          InkWell(
            onTap:(){
              controller.animateToPage(ChannelProgressPage.criteria, 
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


class ReEvaluateItem extends StatelessWidget {
  const ReEvaluateItem({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('不滿意以上信用卡?',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          GestureDetector(
            onTap: (){
              controller.animateToPage(ChannelProgressPage.channel, 
                duration: const Duration(milliseconds: 200), 
                curve: Curves.linear
              );
            },
            child:Container(
              decoration: BoxDecoration(
                color: Palette.kToBlack[600],
                borderRadius:const BorderRadius.all(Radius.circular(12.0)),
              ),
              padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
              child:Container(
                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                child:Text('我要重新找卡',
                  style: TextStyle(
                    color: Palette.kToBlack[0],
                    fontSize: 16,
                  ),
                )
              )
            )
          )
        ]
      )
    );
  }
}

class EvaluationCriteriaSelected extends StatelessWidget {
  const EvaluationCriteriaSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Expanded(
          child:Container(
            padding:const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child:Container(
              padding:const EdgeInsets.fromLTRB(15, 20, 15, 20),
                decoration: BoxDecoration(
                color:Palette.kToBlack[0],
                border: Border.all(
                  color:Palette.kToBlack[50]!,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CriteriaSelectedChannel(),
                  SizedBox(height:10),
                  CriteriaSelectedOthers(),
                ]
              )
            )
          )
        )
      ]
    );
  }
}


class CriteriaSelectedChannel extends StatelessWidget {
  const CriteriaSelectedChannel({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    List<String> channelNames = criteriaViewModel.channelItemModels.map((e) => e.name).toList();
    List<String> selectedNames = criteriaViewModel.channelLabels.map((e) => e.name).toList();
    selectedNames.addAll(channelNames);
    String names = selectedNames.join(", ");

    return Container( 
      child:Text(names,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

class CriteriaSelectedOthers extends StatelessWidget {
  const CriteriaSelectedOthers({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    DateTime dateTime = criteriaViewModel.date;

    String formattedDate = DateFormat('yyyy/MM/dd').format(dateTime);

    String taskLabels = criteriaViewModel.taskLabels.map((e) => e.name).join(", ");

    String rewardTypeName = criteriaViewModel.rewardType.name;

    String payUsageName = "行動支付${criteriaViewModel.payUsage.name}";


    if(taskLabels.isNotEmpty){
      taskLabels = ", $taskLabels";
    }



    return Container(
      child:Text('預計刷卡日$formattedDate, $payUsageName, $rewardTypeName$taskLabels',
        style:const TextStyle(
          fontSize: 13,
        )
      )
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.memory(
      gaplessPlayback: true,
      base64Decode(image), 
      width:80,
      height:50,
    );
  }
}


class EventResultMessage extends StatelessWidget {
  const EventResultMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:const Text('推薦你使用',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

