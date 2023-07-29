import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';



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
                color:Colors.cyan[900],
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
          fontSize: 20,
          color:Colors.cyan[900],
        ),
      )
    );
  }
}