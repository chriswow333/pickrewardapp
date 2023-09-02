import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';




class CostDate extends StatelessWidget {
  const CostDate({super.key});

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
      child:Row(
        children:[
          CostDateName(),
          SizedBox(width:20),
          CostDateValue(),
        ]
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
        fontSize: 20,
        color:Palette.kToBlack[400],
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
          fontSize: 20,
          color:Palette.kToBlack[400],
        ),
      )
    );
  }
}