



import 'package:flutter/material.dart';

class CardRewardEvaluationProgressPay extends StatelessWidget {
  const CardRewardEvaluationProgressPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        PayName(),
        PayItems(),
      ]
    );
  }
}



class PayName extends StatelessWidget {
  const PayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('行動支付',
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}


class PayItems extends StatelessWidget {
  const PayItems({super.key});

  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          PayItem(),
          PayItem(),
          PayItem(),
          PayItem(),
          PayItem(),
          PayItem(),
          PayItem(),

        ]
      ),
    );
  }
}




class PayItem extends StatelessWidget {
  const PayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        side:MaterialStatePropertyAll(
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          )
          
        ),
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(5, 12, 5, 0),
        ),
      ),
      onPressed: () {  },
      child:Column(
        children:[
          PayItemIcon(),
          PayItemName(),
        ]
      )
    );
  }
}


class PayItemIcon extends StatelessWidget {
  const PayItemIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:70,
        height:50,
      child:Icon(Icons.ac_unit_sharp),
    );
  }
}

class PayItemName extends StatelessWidget {
  const PayItemName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('LINE PAY',
        style: 
        TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}