


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AccountingTotalSummary extends StatelessWidget {
  const AccountingTotalSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10, right:10, top:10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
        color: Palette.kToBlack[900]
      ),
      child:Stack(
        alignment:Alignment.bottomRight,
        children:[
          Container(
            alignment: Alignment.bottomRight,
            child:Image.asset(
              'images/logo.png',
              width:100,
              height:100,
              color:Palette.kToBlack[50]
            ),
          ),
          const Column(
            children:[
              SummaryStartFrom(),
              Expanded(child: SizedBox()),
              TotalSaving(),
            ]
          ),
        ]
      )
    );
  }
}




class SummaryStartFrom extends StatelessWidget {
  const SummaryStartFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:GestureDetector(
        onTap:(){

          Future<DateTime?> future = showDialog<DateTime>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
              title: Text('預計刷卡日期',
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
            print(data);
            // criteriaViewModel.date = data as DateTime;
          });
        },
        child:Container(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Text('從2023.11.12起',
                style: TextStyle(
                  color: Palette.kToBlack[0],
                  fontSize: 12,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                  color: Palette.kToBlack[900]
                ),
                child:Row(
                  children:[
                    Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Palette.kToBlack[0],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width:2,),
                    Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Palette.kToBlack[0],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width:2,),
                    Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Palette.kToBlack[0],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          )

        )
        
      )
    );
  }
}



final DateFormat formatter = DateFormat('yyyy-MM-dd');

class DateValue extends StatelessWidget {
  const DateValue({super.key});

  @override
  Widget build(BuildContext context) {

    // CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    return TextButton(
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side: MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: Palette.kToBlack[400]!,
          )
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
        animationDuration:const Duration(microseconds: 0),
      ),
      onPressed: (){


        Future<DateTime?> future = showDialog<DateTime>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
            title: Text('預計刷卡日期',
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
          // criteriaViewModel.date = data as DateTime;
        });
      },
      child:Container(
        child:Row(
          children:[
            Text(DateTime.now().toString(),
              style:TextStyle(
                fontSize: 16,
                color:Palette.kToBlack[600],
              ),
            ),
            const SizedBox(width:5),
            const Icon(Icons.calendar_today)
          ]
        ),
        
      ),
      
    );
  }
}


class TotalSaving extends StatelessWidget {
  const TotalSaving({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('累計省下的摳摳有',
            style: TextStyle(
              color: Palette.kToYellow[200],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height:5),
          Row(
            children:[
              Text('NT\$',
              style: TextStyle(
                color: Palette.kToBlack[0]
              ),
            ),
              Text('124,360',
                style: TextStyle(
                  fontSize: 30,
                  color: Palette.kToBlack[0],
                  fontWeight: FontWeight.bold,
                ),
              )
            ]
          ),
        ]
      )
    );
  }
}

