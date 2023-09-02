import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';



class CostWidget extends StatelessWidget {
  const CostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
      color: Colors.white,
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
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CostName(),
          
          SizedBox(height:5),
          
          CostButtons(),
        ]
      )
    );
  }
}

class CostName extends StatelessWidget {
  const CostName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費金額',
      style: TextStyle(
        fontSize: 20,
        color: Palette.kToBlack[400],
      ),  
    );
  }
}


class CostButtons extends StatelessWidget {
  const CostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Lessthan1000Btn(),
        From1000To5000Btn(),
        MoreThan5000Btn(),
      ]
    );
  }
}


class Lessthan1000Btn extends StatelessWidget {
  const Lessthan1000Btn({super.key});


  final int _cost = 1000;


  @override
  Widget build(BuildContext context) {
    
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int selectedCost = rewardSelectedViewModel.cost;

    return Container(
      decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1)
          ),
        ],
      ),
      child:TextButton(
        onPressed: (){
          if(_cost == selectedCost)return;
          rewardSelectedViewModel.cost = _cost;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlue[50]),
          side:_cost == selectedCost ? MaterialStatePropertyAll(BorderSide(width:1.0)):null,
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Column(
          children:[
            Row(
              children:[
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[900]:Palette.kToBlack[200],
                ),
              ],
            ),
            
            Text('~1000',
              style: TextStyle(
                fontSize: 15,
                color: _cost == selectedCost ? Palette.kToBlack[900]:Palette.kToBlack[200],
              ),
            ),
          ],
        ),
      )
    );
    
    ;
  }
}



class From1000To5000Btn extends StatelessWidget {
  const From1000To5000Btn({super.key});

  final int _cost = 5000;

  @override
  Widget build(BuildContext context) {
       
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int selectedCost = rewardSelectedViewModel.cost;

    return Container(
      decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1)
          ),
        ],
      ),
      child:TextButton(
        onPressed: (){
          if(_cost == selectedCost)return;
          rewardSelectedViewModel.cost = _cost;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlue[50]),
          side:_cost == selectedCost ? MaterialStatePropertyAll(BorderSide(width:1.0)):null,
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Column(
          children:[
            Row(
              children:[
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
                ),
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
                ),
              ],
            ),
            Text('1000~5000',
              style: TextStyle(
                fontSize: 15,
                color: _cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
              ),
            ),
          ],
        ),
      )
    );
  }
}




class MoreThan5000Btn extends StatelessWidget {
  const MoreThan5000Btn({super.key});

  final int _cost = 8000;


  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int selectedCost = rewardSelectedViewModel.cost;


    return Container(
      decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1)
          ),
        ],
      ),
      child:TextButton(
        onPressed: (){
          if(_cost == selectedCost)return;
          rewardSelectedViewModel.cost = _cost;

        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlue[50]),
          side:_cost == selectedCost ? MaterialStatePropertyAll(BorderSide(width:1.0)):null,
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Column(
          children:[
            Row(
              children:[
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
                ),
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
                ),
                Icon(
                  Icons.monetization_on_rounded,
                  color:_cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
                ),
              ],
            ),
            Text('5000~',
              style: TextStyle(
                fontSize: 15,
                color: _cost == selectedCost ? Palette.kToBlack[600]:Palette.kToBlack[200],
              ),
            ),
          ],
        ),
      )
    );
    ;
  }
}







