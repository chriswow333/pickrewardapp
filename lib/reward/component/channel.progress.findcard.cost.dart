



import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/viewmodel/reward.selected.dart';
import 'package:provider/provider.dart';

class CostName extends StatelessWidget {
  const CostName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費金額',
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
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

    return TextButton(
      onPressed: (){
        if(_cost == selectedCost)return;
        rewardSelectedViewModel.cost = _cost;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(_cost == selectedCost ? Colors.cyan[900]:Colors.teal[50]),
        // fixedSize: MaterialStatePropertyAll(Size(70,50)),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
      ),
      child:Column(
        children:[
          Row(
            children:[
              Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
            ],
          ),
          
          Text('~1000',
            style: TextStyle(
              fontSize: 15,
              color: _cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
            ),
          ),
        ],
      ),
    );
  }
}




class From1000To5000Btn extends StatelessWidget {
  const From1000To5000Btn({super.key});

  final int _cost = 5000;

  @override
  Widget build(BuildContext context) {
       
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int selectedCost = rewardSelectedViewModel.cost;

    return TextButton(
      onPressed: (){
        if(_cost == selectedCost)return;
        rewardSelectedViewModel.cost = _cost;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(_cost == selectedCost ? Colors.cyan[900]:Colors.teal[50]),
        // fixedSize: MaterialStatePropertyAll(Size(70,50)),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
      ),
      child:Column(
        children:[
          Row(
            children:[
              Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
              Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
            ],
          ),
          Text('1000~5000',
            style: TextStyle(
              fontSize: 15,
              color: _cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
            ),
          ),
        ],
      ),
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


    return TextButton(
      onPressed: (){
        if(_cost == selectedCost)return;
        rewardSelectedViewModel.cost = _cost;

      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(_cost == selectedCost ? Colors.cyan[900]:Colors.teal[50]),
        // fixedSize: MaterialStatePropertyAll(Size(70,50)),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
      ),
      child:Column(
        children:[
          Row(
            children:[
              Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
              Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
               Icon(
                Icons.monetization_on_rounded,
                color:_cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
              ),
            ],
          ),
          Text('5000~',
            style: TextStyle(
              fontSize: 15,
              color: _cost == selectedCost ? Colors.cyan[50]:Colors.teal[900],
            ),
          ),
        ],
      ),
    );
  }
}






class CostDate extends StatelessWidget {
  const CostDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CostDateName(),
        SizedBox(width:20),
        CostDateValue(),
      ]
    );
  }
}


class CostDateName extends StatelessWidget {
  const CostDateName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費日期',
      style:TextStyle(
        fontSize: 20,
        color:Colors.cyan[900],
      ),
    );
  }
}

class CostDateValue extends StatelessWidget {
  const CostDateValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('2023/01/01',
      style:TextStyle(
        fontSize: 20,
        color:Colors.cyan[900],
      ),
    );
  }
}