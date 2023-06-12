
import 'package:flutter/material.dart';


class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Banner(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            ToggleSwitch(),
          ]
        )
        
      ]
    );
  }
}


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
        // width:120,
      // padding:const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(width:1.0),
        color:Colors.lightBlue[50],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
            Container(
              padding:const EdgeInsets.fromLTRB(10, 5, 10, 5.0),
              decoration: isChannel ? BoxDecoration(
                color:Colors.lightBlue[900],
                borderRadius: BorderRadius.circular(20),
              ) : 
              const BoxDecoration(),
              child:Text(
                '通路',
                style: TextStyle(
                  fontSize: 20,
                  color: isChannel? Colors.lightBlue[100]:Colors.lightBlue[900],
                ),  
              )  
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(10, 5, 10, 5.0),            
              decoration: !isChannel ? BoxDecoration(
              color:Colors.lightBlue[900],
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(width:1.0),
            ) : 
            const BoxDecoration(),
            child:Text(
              '卡片',
              style: TextStyle(
                fontSize: 20,
                color: !isChannel? Colors.lightBlue[100]:Colors.lightBlue[900],
              ),  
            )  
          ),
        ],
      ),
    ),
  );
}
}


class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '找CoCo',
      style: TextStyle(
        fontSize: 20,
      ),
      
    );
  }
}


