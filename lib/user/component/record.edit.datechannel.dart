


import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/record.edit.datechannel.channelitem.dart';
import 'package:pickrewardapp/user/viewmodel/user_record.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';



class RecordEditDateChannel extends StatelessWidget {
  const RecordEditDateChannel({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Container(
        padding: const EdgeInsets.all(10),
        child:const Column(
          children:[
            DateField(),
            Divider(),
            ChannelField(),
          ]
        )
      )
    );
  }
}


class ChannelField extends StatelessWidget {
  const ChannelField({super.key});

  @override
  Widget build(BuildContext context) {

    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);

    return SizedBox(
      height:40,
      child:GestureDetector(
        onTap: (){
          CupertinoScaffold.showCupertinoModalBottomSheet(
            context: context,
            expand: true,
            builder: (context) {
              return ChannelItemsPage(userRecordViewModel: userRecordViewModel,);
            },
          );
        },
        child:Container(
          child:Row(
            children:[
              Text("消費通路",
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[300],
                )
              ),
              Expanded(
                child:Container(
                  decoration: const BoxDecoration(),
                ),
              ),
              Text(userRecordViewModel.channelName,
                style:TextStyle( 
                  fontSize: 14,
                  color:Palette.kToBlack[600],
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}


final DateFormat formatter = DateFormat('yyyy-MM-dd');
class DateField extends StatefulWidget {
  const DateField({super.key});
  
  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {

  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {

    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);
    return SizedBox(
      height:40,
      child:GestureDetector(
        onTap: (){
          Future<DateTime?> future = showDialog<DateTime>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
              title: Text('消費日期',
                style:TextStyle(
                  fontSize: 16,
                  color:Palette.kToBlack[400],
                ),
              ),
              content:SizedBox(
                  height: 350,
                  width:100,
                  child:SfDateRangePicker(
                    view: DateRangePickerView.month,
                    selectionMode: DateRangePickerSelectionMode.single,
                    showNavigationArrow:true,
                    showActionButtons:true,
                    initialSelectedDate:DateTime.now(),
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
            userRecordViewModel.recordTime = data as DateTime;
            setState(() {
              dateTime = data;
            });
          });
        },
        child:Container(
          // alignment: Alignment.centerRight,
          child:Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("消費日期",
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[300],
                )
              ),
              Expanded(
                child:Container(
                  decoration: const BoxDecoration(),
                ),
              ),
              Text(formatter.format(dateTime),
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[600],
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}

