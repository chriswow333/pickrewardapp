




import 'package:flutter/material.dart';

class RewardWayName extends StatelessWidget {
  const RewardWayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('回饋方式',
      style:TextStyle(
        fontSize: 20,
        color:Colors.cyan[900],
      )
    );
  }
}

class RewardWayItems extends StatelessWidget {
  const RewardWayItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CashWay(),
        PointWay(),
      ]
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class CashWay extends StatelessWidget {
  const CashWay({super.key});

  @override
  Widget build(BuildContext context) {

      SingingCharacter? _character = SingingCharacter.lafayette;

    return TextButton(
      onPressed: (){},
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      child:Row(
        children:[
          
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStatePropertyAll(Colors.cyan[900]),
            value: true,
            onChanged: (bool? value) {
              // setState(() {
              //   isChecked = value!;
              // });
            },
          ),
          Text('現金回饋',
            style:TextStyle(
              fontSize: 20,
              color:Colors.cyan[900],
            ),
          ),
        ]
      ),
    );
  }
}



class PointWay extends StatelessWidget {
  const PointWay({super.key});

  @override
  Widget build(BuildContext context) {

      SingingCharacter? _character = SingingCharacter.lafayette;

    return TextButton(
      onPressed: (){},
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      child:Row(
        children:[
          
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStatePropertyAll(Colors.cyan[900]),
            value: true,
            onChanged: (bool? value) {
              // setState(() {
              //   isChecked = value!;
              // });
            },
          ),
          Text('點數回饋',
            style:TextStyle(
              fontSize: 20,
              color:Colors.cyan[900],
            ),
          ),
        ]
      ),
    );
  }
}