

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class CardRewardEvaluationProgressCostDate extends StatelessWidget {
  const CardRewardEvaluationProgressCostDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:20),
      child:Row(
        children:[
          CostDateName(),
          CostDateField(),
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
        color: Colors.cyan[900],
      ),  
    );
  }
}


final DateFormat formatter = DateFormat('yyyy-MM-dd');


class CostDateField extends StatefulWidget {
  const CostDateField({super.key});

  @override
  State<CostDateField> createState() => _CostDateFieldState();
}

class _CostDateFieldState extends State<CostDateField> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Future<DateTime?> value = onShowPicker(context, DateTime.now());
        value.then((value) => 
          print(value!)
        );
      },
      child:Text('click')
    );
  }



  Future<DateTime?> onShowPicker(BuildContext context, DateTime? currentValue) async {
    
    DateTime? newValue;
    
    DateTime? date = await _showDatePicker(context, currentValue);
    if (date == null) return currentValue;
    final time = await _showTimePicker(context, currentValue);
    if (date != null) {
      newValue = combine(date, time);
    }
  
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
      // cancelText: widget.cancelText,
      // confirmText: widget.confirmText,
      // errorFormatText: widget.errorFormatText,
      // errorInvalidText: widget.errorInvalidText,
      // fieldHintText: widget.fieldHintText,
      // fieldLabelText: widget.fieldLabelText,
      // helpText: widget.helpText,
      // initialEntryMode: widget.initialEntryMode,
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
      // initialEntryMode: widget.timePickerInitialEntryMode,
      // helpText: widget.helpText,
      // confirmText: widget.confirmText,
      // cancelText: widget.cancelText,
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
