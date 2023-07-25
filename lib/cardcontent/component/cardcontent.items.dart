


import 'package:flutter/material.dart';

class CardContentItems extends StatelessWidget {
  const CardContentItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardRewardItem(),
            CardActivityItem(),
          ]
        ),
      ),
    );
  }
}

class CardActivityItem extends StatelessWidget {
  const CardActivityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child:Container(
        height:100,
        padding:const EdgeInsets.only(bottom: 20),
        child:TextButton(
          onPressed: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const CardRewardScreen()),
            // );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            elevation:MaterialStatePropertyAll(2),
          ),
          child:CardActivityName(),
        )
      )
    );    
  }
}

class CardActivityName extends StatelessWidget {
  const CardActivityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text('全球購物保障, 最高享50萬',
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 20,
        ),
      ),
    );
  }
}


class CardRewardItem extends StatelessWidget {
  const CardRewardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        onPressed: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const CardRewardScreen()),
          // );
        },
        style: ButtonStyle( 
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Container(
          child:Row(
            children:[
              CardRewardType(),
              CardRewardName(),
            ]
          )
        )
      )
    );
  }
}

class CardRewardType extends StatelessWidget {
  const CardRewardType({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('現金回饋',
      style:TextStyle(
        color:Colors.cyan[900],
        fontSize: 20,
      ),
    );
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:270,
      padding: const EdgeInsets.only(left:20),
      child:
        Text('優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比',
          style:TextStyle(
            color:Colors.cyan[900],
            fontSize: 18,
            overflow: TextOverflow.clip,
          ),
      )
    );
  }
}