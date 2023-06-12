


import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {

  bool isChannel = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      onPressed: (){
        setState((){
          isChannel = !isChannel;
        });
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
              decoration: isChannel ? BoxDecoration(
                color:Colors.cyan[900],
                borderRadius: BorderRadius.circular(20),
              ) : 
              const BoxDecoration(),
              child:Text(
                '通路',
                style: TextStyle(
                  fontSize: 20,
                  color: isChannel? Colors.cyan[50]:Colors.cyan[900],
                ),  
              )  
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(10, 5, 10, 5.0),            
              decoration: !isChannel ? BoxDecoration(
              color:Colors.cyan[900],
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(width:1.0),
            ) : 
            const BoxDecoration(),
            child:Text(
              '卡片',
              style: TextStyle(
                fontSize: 20,
                color: !isChannel? Colors.cyan[50]:Colors.cyan[900],
              ),  
            ),
          ),
        ],
      ),
    ),
  );
}
}