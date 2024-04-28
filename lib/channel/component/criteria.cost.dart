



import 'package:flutter/cupertino.dart';
import 'package:pickrewardapp/channel/model/cost.dart';
import 'package:pickrewardapp/channel/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/channel/viewmodel/eventresult.dart';

import 'package:provider/provider.dart';




class CriteriaCostWidget extends StatefulWidget {
  const CriteriaCostWidget({super.key});

  @override
  State<CriteriaCostWidget> createState() => _CriteriaCostWidgetState();
}

class _CriteriaCostWidgetState extends State<CriteriaCostWidget> {

  int _sliding = CostStatusEnum.less.status;


  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context,listen:false);
    int channelIDLength = criteriaViewModel.getChannelIDs().length;
    int labelLength = criteriaViewModel.channelLabels.length;
    
    bool channelSelected = channelIDLength + labelLength > 0;
    return Container(
      child:Column(
        children:[
          Row(
            children:[
              Expanded(
                child:CupertinoSlidingSegmentedControl(
                children: {
                  CostStatusEnum.less.status:Text(CostStatusEnum.less.name),
                  CostStatusEnum.medium.status:Text(CostStatusEnum.medium.name),
                  CostStatusEnum.more.status:Text(CostStatusEnum.more.name),
                }, 
                groupValue: _sliding,
                onValueChanged: (int? newValue){
                  setState(() {
                    List<CostStatusEnum> newCosts = CostStatusEnum.values.where((element) => element.status == newValue).toList();
                    if(newCosts.length == 1 && !cardEventResultsViewModel.loading) {
                      criteriaViewModel.cost = newCosts[0];
                      if(channelSelected){
                        cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);
                      }
                      _sliding = newValue??0;
                    }
                  });
                }),
              )
            ]
          ),
          
          const SizedBox(height:10),
          const CostMessage(),
        ]
      )
    );
  }
}



class CostMessage extends StatelessWidget {
  const CostMessage({super.key});

  @override
  Widget build(BuildContext context) {
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    return Container(
      child:Text('刷卡金額大約在\$${criteriaViewModel.cost.value}左右, 以下的信用卡最適合你唷!',
        style: const TextStyle(
          fontSize: 14,
        ),
      )
    );
  }
}

