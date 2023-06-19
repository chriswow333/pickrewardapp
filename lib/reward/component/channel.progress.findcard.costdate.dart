



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';



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


class CostDateValue extends StatelessWidget {
  CostDateValue({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Future<String?> future = showDialog<String>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
            title: Text('消費日期'),
            content:Container(
                height: 350,
                width:100,
                child:SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                  showNavigationArrow:true,
                  showActionButtons:true,
                  onSubmit:(Object? obj){
                    Navigator.pop(context, obj.toString());
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
          print(data);
        });


      },
      child:Text(DateTime.now().toString()),
    );
  }



}