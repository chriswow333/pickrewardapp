

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class CardRewardEvaluationProgressCostDate extends StatelessWidget {
  const CardRewardEvaluationProgressCostDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:20),
      child:Row(
        children:[
          CostDateName(),
          CostDate(),
        ]
      ),
    );
  }
}


class CostDateName extends StatelessWidget {
  const CostDateName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費日期',
      style: TextStyle(
        fontSize: 20,
        color: Palette.kToBlack[900],
      ),  
    );
  }
}


final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');



class CostDate extends StatelessWidget {
  const CostDate({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    
    DateTime costDate = evaluationSelectedViewModel.getCostDate();

    return TextButton(
      onPressed: (){
        Future<DateTime?> value = onShowPicker(context, DateTime.now());
        value.then((value) => 
          evaluationSelectedViewModel.setCostDate(value!)
        );
      },
      child:Text(formatter.format(costDate),
        style:TextStyle(
          color: Palette.kToBlack[900],
          fontSize: 18,
        ),
      )
    );
  }



  Future<DateTime?> onShowPicker(BuildContext context, DateTime? currentValue) async {
    
    DateTime? newValue;
    
    DateTime? date = await _showDatePicker(context, currentValue);
    if (date == null) return currentValue;
    final time = await _showTimePicker(context, currentValue);
    newValue = combine(date, time);
  
    final finalValue = newValue ?? currentValue;
    return finalValue;
  }


  Future<DateTime?> _showDatePicker(
      BuildContext context, DateTime? currentValue) {
    return showDatePicker(
      context: context, 
      firstDate: DateTime(1900), 
      initialDate: DateTime.now(), 
      lastDate: DateTime(2100),
      // // selectableDayPredicate: widget.selectableDayPredicate,
      // initialDatePickerMode: widget.initialDatePickerMode,
      // initialDate: currentValue ?? widget.initialDate ?? DateTime.now(),
      // firstDate: widget.firstDate ?? DateTime(1900),
      // lastDate: widget.lastDate ?? DateTime(2100),
      // locale: widget.locale,
      // textDirection: widget.textDirection,
      // useRootNavigator: widget.useRootNavigator,
      // builder: widget.transitionBuilder,
      cancelText: '取消',
      confirmText: '確認',
      locale:const Locale('zh'),
      errorFormatText: '格式有誤',
      errorInvalidText: '請輸入正確格式',
      fieldHintText: 'widget.fieldHintText',
      fieldLabelText: '消費日期',
      helpText: '請輸入消費日期',
      initialEntryMode: DatePickerEntryMode.calendar,
      keyboardType:TextInputType.number,
      // routeSettings: widget.routeSettings,
      // currentDate: widget.currentDate,
      // anchorPoint: widget.anchorPoint,
    );
  }

  Future<TimeOfDay?> _showTimePicker(
      BuildContext context, DateTime? currentValue) async {
        
    // var builder = widget.transitionBuilder;
    // if (widget.locale != null) {
    //   builder = (context, child) {
    //     var transitionBuilder = widget.transitionBuilder;
    //     return Localizations.override(
    //       context: context,
    //       locale: widget.locale,
    //       child: transitionBuilder == null
    //           ? child
    //           : transitionBuilder(context, child),
    //     );
    //   };
    // }

    final timePickerResult = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
      // builder: builder,
      // useRootNavigator: widget.useRootNavigator,
      // routeSettings: widget.routeSettings,
      initialEntryMode: TimePickerEntryMode.input,
      helpText: '請輸入時間',
      confirmText: '確認',
      cancelText: '取消',
      hourLabelText:'小時',
      minuteLabelText:'分鐘',
      // anchorPoint: widget.anchorPoint,
      // errorInvalidText: widget.errorInvalidText,
      // onEntryModeChanged: widget.onEntryModeChanged,
    );
    return timePickerResult ??
        (currentValue != null ? TimeOfDay.fromDateTime(currentValue) : null);
  }

  /// Sets the hour and minute of a [DateTime] from a [TimeOfDay].
  DateTime combine(DateTime date, TimeOfDay? time) => DateTime(
      date.year, date.month, date.day, time?.hour ?? 0, time?.minute ?? 0);

  DateTime? convert(TimeOfDay? time) =>
      time == null ? null : DateTime(1, 1, 1, time.hour, time.minute);







}

// class CostDateField extends StatefulWidget {
//   const CostDateField({super.key});

//   @override
//   State<CostDateField> createState() => _CostDateFieldState();
// }

// class _CostDateFieldState extends State<CostDateField> {


//   @override
//   Widget build(BuildContext context) {

//     EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    
//     DateTime costDate = evaluationSelectedViewModel.getCostDate();

//     return TextButton(
//       onPressed: (){
//         Future<DateTime?> value = onShowPicker(context, DateTime.now());
//         value.then((value) => 
//           evaluationSelectedViewModel.setCostDate(value!)
//         );
//       },
//       child:Text(formatter.format(costDate),
//         style:TextStyle(
//           color: Colors.teal[900],
//         ),
//       )
//     );
//   }


// }
