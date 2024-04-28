import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:provider/provider.dart';


class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
      ),
      child:const Row(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height:10),
              DateName(),
              SizedBox(height:10),
              DateValue(),
            ]
          )
        ]
      )
      
    );
  }
}



class DateName extends StatelessWidget {
  const DateName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('預計刷卡日期',
      style:TextStyle(
        fontSize: 16,
        color:Palette.kToBlack[600],
        fontWeight: FontWeight.bold,
      ),
    );
  }
}




final DateFormat formatter = DateFormat('yyyy-MM-dd');

class DateValue extends StatelessWidget {
  const DateValue({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

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
              // surfaceTintColor: Palette.kToBlack[10],
              content:SizedBox(
                height: 350,
                width:100,
                child:SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                  showNavigationArrow:true,
                  showActionButtons:true,
                  initialSelectedDate:criteriaViewModel.date,
                  backgroundColor:Palette.kToBlack[10],
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
          criteriaViewModel.date = data as DateTime;
        });
      },
      child:Container(
        child:Row(
          children:[
            Text(formatter.format(criteriaViewModel.date),
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


// class CostName extends StatelessWidget {
//   const CostName({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text('預估消費金額(新台幣)',
//       style: TextStyle(
//         fontSize: 16,
//         color: Palette.kToBlack[600],
//       ),  
//     );
//   }
// }


// class CostButtons extends StatelessWidget {
//   const CostButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children:[
//         Lessthan1000Btn(),
//         SizedBox(width:20),
//         From1000To5000Btn(),
//         SizedBox(width:20),
//         MoreThan5000Btn(),
//       ]
//     );
//   }
// }


// class Lessthan1000Btn extends StatelessWidget {
//   const Lessthan1000Btn({super.key});


//   final int _cost = 1000;


//   @override
//   Widget build(BuildContext context) {
    
//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
//     int selectedCost = rewardSelectedViewModel.cost;

//     return TextButton(
//       onPressed: (){
//         if(_cost == selectedCost)return;
//         rewardSelectedViewModel.cost = _cost;
//       },
//       style:ButtonStyle(
//         backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
//         side:MaterialStatePropertyAll(
//           BorderSide(
//             width:1.5,
//             color: _cost == selectedCost ? Palette.kToYellow[400]!:Palette.kToBlack[400]!,
//           )
//         ),
//         padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
//         shape: MaterialStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//         ),
//       ),
//       child:Text('\$1000',
//         style: TextStyle(
//           fontSize: 14,
//           color: _cost == selectedCost ? 
//             Palette.kToYellow[400]:Palette.kToBlack[400],
//         ),
//       ),
//     );
//   }
// }


// class From1000To5000Btn extends StatelessWidget {
//   const From1000To5000Btn({super.key});

//   final int _cost = 5000;

//   @override
//   Widget build(BuildContext context) {
       
//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
//     int selectedCost = rewardSelectedViewModel.cost;

//     return Container(
//       child:TextButton(
//         onPressed: (){
//           if(_cost == selectedCost)return;
//           rewardSelectedViewModel.cost = _cost;
//         },
//         style:ButtonStyle(
//           backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
//           side:MaterialStatePropertyAll(
//             BorderSide(
//               width:1.5,
//               color: _cost == selectedCost ? Palette.kToYellow[400]!: Palette.kToBlack[400]!,
//             )
//           ),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//           ),
//           padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
//         ),
//         child:Column(
//           children:[
//             Text('\$5000',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: _cost == selectedCost ? 
//                   Palette.kToYellow[400]:Palette.kToBlack[400],
//               ),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }




// class MoreThan5000Btn extends StatelessWidget {
//   const MoreThan5000Btn({super.key});

//   final int _cost = 10000;


//   @override
//   Widget build(BuildContext context) {
//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
//     int selectedCost = rewardSelectedViewModel.cost;

//     return Container(
      
//       child:TextButton(
//         onPressed: (){
//           if(_cost == selectedCost)return;
//           rewardSelectedViewModel.cost = _cost;

//         },
//         style:ButtonStyle(
//           backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
//           side: MaterialStatePropertyAll(
//             BorderSide(
//               width:1.5,
//               color: _cost == selectedCost ? 
//                 Palette.kToYellow[400]!:Palette.kToBlack[400]!,
//             )
//           ),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//           ),
//           padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
//           animationDuration:Duration(microseconds: 0),
//         ),
//         child:Text('\$10000',
//           style: TextStyle(
//             fontSize: 14,
//             color: _cost == selectedCost ? 
//               Palette.kToYellow[400]:Palette.kToBlack[400],
//           ),
//         ),
//       )
//     );
//   }
// }

