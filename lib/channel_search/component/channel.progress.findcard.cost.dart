import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';



class CostWidget extends StatelessWidget {
  const CostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:10),
          CostName(),
          SizedBox(height:10),
          CostButtons(),
          SizedBox(height:10),
          Divider(thickness:1),
          SizedBox(height:10),
          CostDateName(),
          CostDateValue(),
        ]
      )
    );
  }
}

class CostName extends StatelessWidget {
  const CostName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費金額(新台幣)',
      style: TextStyle(
        fontSize: 18,
        color: Palette.kToBlack[600],
      ),  
    );
  }
}


class CostButtons extends StatelessWidget {
  const CostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Lessthan1000Btn(),
        SizedBox(width:20),
        From1000To5000Btn(),
        SizedBox(width:20),
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
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side:MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: _cost == selectedCost ? Palette.kToYellow[400]!:Palette.kToBlack[400]!,
          )
        ),
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      child:Text('\$1000',
        style: TextStyle(
          fontSize: 14,
          color: _cost == selectedCost ? 
            Palette.kToYellow[400]:Palette.kToBlack[400],
        ),
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

    return Container(
      child:TextButton(
        onPressed: (){
          if(_cost == selectedCost)return;
          rewardSelectedViewModel.cost = _cost;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side:MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: _cost == selectedCost ? Palette.kToYellow[400]!: Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
        ),
        child:Column(
          children:[
            Text('\$5000',
              style: TextStyle(
                fontSize: 14,
                color: _cost == selectedCost ? 
                  Palette.kToYellow[400]:Palette.kToBlack[400],
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

  final int _cost = 10000;


  @override
  Widget build(BuildContext context) {
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    int selectedCost = rewardSelectedViewModel.cost;

    return Container(
      
      child:TextButton(
        onPressed: (){
          if(_cost == selectedCost)return;
          rewardSelectedViewModel.cost = _cost;

        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: _cost == selectedCost ? 
                Palette.kToYellow[400]!:Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text('\$10000',
          style: TextStyle(
            fontSize: 14,
            color: _cost == selectedCost ? 
              Palette.kToYellow[400]:Palette.kToBlack[400],
          ),
        ),
      )
    );
  }
}


class CostDateName extends StatelessWidget {
  const CostDateName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費日期',
      style:TextStyle(
        fontSize: 18,
        color:Palette.kToBlack[600],
      ),
    );
  }
}




final DateFormat formatter = DateFormat('yyyy-MM-dd');

class CostDateValue extends StatelessWidget {
  const CostDateValue({super.key});

  @override
  Widget build(BuildContext context) {

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    return TextButton(
      onPressed: (){
        Future<DateTime?> future = showDialog<DateTime>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
            title: Text('消費日期',
              style:TextStyle(
                fontSize: 20,
                color:Palette.kToBlack[400],
              ),
            ),
            content:Container(
                height: 350,
                width:100,
                child:SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                  showNavigationArrow:true,
                  showActionButtons:true,
                  initialSelectedDate:rewardSelectedViewModel.eventDate,
                  onSubmit:(Object? obj){
                    Navigator.pop(context, obj);
                  },
                  onCancel:() {
                    Navigator.pop(context);
                  }
                )
              ),
            );
          }
        );
        future.then((data){
          rewardSelectedViewModel.eventDate = data as DateTime;
        });
      },
      child:Text(formatter.format(rewardSelectedViewModel.eventDate),
        style:TextStyle(
          fontSize: 18,
          color:Palette.kToBlack[600],
        ),
      )
    );
  }
}