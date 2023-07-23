import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:pickrewardapp/card/viewmodel/channel.dart';
import 'package:pickrewardapp/card/viewmodel/toggleswitch.dart';


class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {

    ToggleSwitchViewModel toggleSwitchViewModel = Provider.of<ToggleSwitchViewModel>(context);

    return Container(
      child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:Colors.cyan[50],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
            TextButton(
              onPressed: (){
                toggleSwitchViewModel.toggle = ToggleTypeEnum.Channel;

              },
              style:ButtonStyle(
                padding:MaterialStatePropertyAll(EdgeInsets.fromLTRB(10, 5, 10, 5)),
                backgroundColor:MaterialStatePropertyAll(
                  toggleSwitchViewModel.type == ToggleTypeEnum.Channel ? Colors.cyan[900]!:Colors.cyan[50]!,
                ),
                shape:MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    side:BorderSide(
                      width:0.5,
                      color:toggleSwitchViewModel.type == ToggleTypeEnum.Channel ? Colors.cyan[900]!:Colors.cyan[50]!,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child:Text(
                '通路',
                style: TextStyle(
                  fontSize: 20,
                  color: toggleSwitchViewModel.type == ToggleTypeEnum.Channel? Colors.cyan[50]:Colors.cyan[900],
                ),  
              )  
            ),
            TextButton(
              onPressed: (){
                toggleSwitchViewModel.toggle = ToggleTypeEnum.Card;

              },
              style:ButtonStyle(
                padding:MaterialStatePropertyAll(EdgeInsets.fromLTRB(10, 5, 10, 5)),
                backgroundColor:MaterialStatePropertyAll(
                  toggleSwitchViewModel.type == ToggleTypeEnum.Card ? Colors.cyan[900]!:Colors.cyan[50]!,
                ),
                shape:MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    side:BorderSide(
                      width:0.5,
                      color:toggleSwitchViewModel.type == ToggleTypeEnum.Card ? Colors.cyan[900]!:Colors.cyan[50]!,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            child:Text(
              '卡片',
              style: TextStyle(
                fontSize: 20,
                color: toggleSwitchViewModel.type == ToggleTypeEnum.Card ? Colors.cyan[50]:Colors.cyan[900],
              ),  
            ),
          ),
        ],
      ),
    ),
  );
  }
}

