



import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/cost.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CriteriaCostWidget extends StatelessWidget {
  const CriteriaCostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    return Container(
      height:70,
      child:Column(
        children:[
          Container(
            decoration: BoxDecoration(
              color: Palette.kToBlack[20],
              borderRadius: BorderRadius.circular(10),
            ),
            child:Row(
              children:[
                Flexible(
                  child: Container( 
                    padding:EdgeInsets.all(2), 
                    child:LessCostBtn(),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  height: 20,
                  width: 2,
                  color:criteriaViewModel.cost == CostStatusEnum.more ? 
                    Palette.kToBlack[100]:Palette.kToBlack[20],
                ),
                Flexible(
                  child: Container( 
                    padding:EdgeInsets.all(2), 
                    child:MediumCostBtn(),
                  ),
                ),
              
                AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  height: 20,
                  width: 2,
                  color: criteriaViewModel.cost == CostStatusEnum.less ? 
                    Palette.kToBlack[100]:Palette.kToBlack[20],
                ),
                Flexible(
                  child: Container( 
                    padding:EdgeInsets.all(2), 
                    child:MoreCostBtn(),
                  ),
                ),
              ]
            ),
          ),
          SizedBox(height:10),
          CostMessage(),
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
        style: TextStyle(
          fontSize: 14,
        ),
      )
    );
  }
}


class LessCostBtn  extends StatelessWidget {
  const LessCostBtn ({super.key});

  @override
  Widget build(BuildContext context) {
    
    CostStatusEnum costStatus = CostStatusEnum.less;
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context,listen:false);

    return InkWell(
      onTap: () { 
        if(criteriaViewModel.cost.compareTo(costStatus) == 0 || cardEventResultsViewModel.loading)return;
        criteriaViewModel.cost = costStatus;
        cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);

      },
      child:AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.slowMiddle,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: criteriaViewModel.cost.compareTo(costStatus) == 0 ? 
            Palette.kToBlack[0]:Palette.kToBlack[20],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if(criteriaViewModel.cost.compareTo(costStatus) == 0) 
              BoxShadow(
                color: Palette.kToBlack[50]!,
                offset: Offset(0.0, 1), // (x, y)
                blurRadius: 1.0,
              ),
          ],
        ),
        child:Container(
          child:Text(costStatus.name,
            style: TextStyle(
              fontWeight:criteriaViewModel.cost.compareTo(costStatus) == 0 ?
                FontWeight.bold:FontWeight.normal,
            ),
          ),
        )
      )
    );
  }
}


class MediumCostBtn extends StatelessWidget {
  const MediumCostBtn({super.key});

  @override
  Widget build(BuildContext context) {

    CostStatusEnum costStatus = CostStatusEnum.medium;

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context,listen:false);


    return InkWell(
      onTap: () { 
        if(criteriaViewModel.cost.compareTo(costStatus) == 0 || cardEventResultsViewModel.loading)return;
        criteriaViewModel.cost = costStatus;
        cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);
      },
      child:AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.slowMiddle,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: criteriaViewModel.cost.compareTo(costStatus) == 0 ? 
            Palette.kToBlack[0]:Palette.kToBlack[20],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if(criteriaViewModel.cost.compareTo(costStatus) == 0) 
              BoxShadow(
                color: Palette.kToBlack[50]!,
                offset: Offset(0.0, 1), // (x, y)
                blurRadius: 1.0,
              ),
          ],
        ),
        child:Container(
          child:Text(costStatus.name,
            style: TextStyle(
              fontWeight:criteriaViewModel.cost.compareTo(costStatus) == 0 ?
                FontWeight.bold:FontWeight.normal,
            ),
          ),
        )
      )
    );
  }
}

 

class MoreCostBtn extends StatelessWidget {
  const MoreCostBtn({super.key});

  @override
  Widget build(BuildContext context) {
    CostStatusEnum costStatus = CostStatusEnum.more;
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    CardEventResultsViewModel cardEventResultsViewModel = Provider.of<CardEventResultsViewModel>(context, listen: false);

    return InkWell(
      onTap: () { 
        if(criteriaViewModel.cost.compareTo(costStatus) == 0 || cardEventResultsViewModel.loading)return;
        criteriaViewModel.cost = costStatus;
        cardEventResultsViewModel.evaluateCardEventResult(criteriaViewModel);
      },
      child:AnimatedContainer(
        duration: const Duration(milliseconds:100),
        curve: Curves.slowMiddle,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: criteriaViewModel.cost.compareTo(costStatus) == 0 ? 
            Palette.kToBlack[0]:Palette.kToBlack[20],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if(criteriaViewModel.cost.compareTo(costStatus) == 0) 
              BoxShadow(
                color: Palette.kToBlack[50]!,
                offset: Offset(0.0, 1), // (x, y)
                blurRadius: 1.0,
              ),
          ],
        ),
        child:Container(
          child:Text(costStatus.name,
            style: TextStyle(
              fontWeight:criteriaViewModel.cost.compareTo(costStatus) == 0 ?
                FontWeight.bold:FontWeight.normal,
            ),
          ),
        )
      )
    );
  }
}