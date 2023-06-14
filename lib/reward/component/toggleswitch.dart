


import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/viewmodel/toggleswitch.dart';
import 'package:provider/provider.dart';




class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {

    ToggleSwitchViewModel toggleSwitchViewModel = Provider.of<ToggleSwitchViewModel>(context);

    return TextButton(
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      onPressed: (){
        toggleSwitchViewModel.toggle();
      },
      child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.cyan[50],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
            Container(
              padding:const EdgeInsets.fromLTRB(10, 5, 10, 5.0),
              decoration: toggleSwitchViewModel.getToggleType() == ToggleTypeEnum.Channel ? BoxDecoration(
                color:Colors.cyan[900],
                borderRadius: BorderRadius.circular(20),
              ) : 
              const BoxDecoration(),
              child:Text(
                '通路',
                style: TextStyle(
                  fontSize: 20,
                  color: toggleSwitchViewModel.getToggleType() == ToggleTypeEnum.Channel? Colors.cyan[50]:Colors.cyan[900],
                ),  
              )  
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(10, 5, 10, 5.0),            
              decoration: toggleSwitchViewModel.getToggleType() == ToggleTypeEnum.Card ? BoxDecoration(
              color:Colors.cyan[900],
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(width:1.0),
            ) : 
            const BoxDecoration(),
            child:Text(
              '卡片',
              style: TextStyle(
                fontSize: 20,
                color: toggleSwitchViewModel.getToggleType() == ToggleTypeEnum.Card ? Colors.cyan[50]:Colors.cyan[900],
              ),  
            ),
          ),
        ],
      ),
    ),
  );
  }
}

