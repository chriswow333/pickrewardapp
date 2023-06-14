


import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:400,
      child:SingleChildScrollView(
        child:Column(
          children:[
            CardItem(),
            SizedBox(height:10),
            CardItem(),
            SizedBox(height:10),
            CardItem(),
            SizedBox(height:10),
            CardItem(),
            SizedBox(height:10),
            CardItem(),
            SizedBox(height:10),
            CardItem(),
          ],
        ),
      ),
      
      
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        elevation:MaterialStatePropertyAll(2),
      ),
      child:Container(
        padding:const EdgeInsets.all(10),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            // CardUpdateDate(),
            Row(
              children:[
                CardTitle(),
                SizedBox(width:20),
                CardDescs(),
              ],
            ),
          ]
        )
        
      ),
    );
  }
}


class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('2023/02/02',
      style:TextStyle(
        fontSize: 10,
        color:Colors.cyan[900],
      )
    );
  }
}

class CardDescs extends StatelessWidget {
  const CardDescs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text('1. 滿優惠滿優惠滿優惠滿優惠滿優惠',
          style:TextStyle(
            fontSize: 12,
            color:Colors.cyan[900],
          ),
        ),
        Text('2. 滿優惠滿優惠滿優惠滿優惠滿優惠',
          style:TextStyle(
            fontSize: 12,
            color:Colors.cyan[900],
          ),
        ),
        Text('3. 滿優惠滿優惠滿優惠滿優惠滿優惠滿',
          style:TextStyle(
            fontSize: 12,
            color:Colors.cyan[900],
          ),
        ),
      ]
    );
  }
}



class CardTitle extends StatelessWidget {
  const CardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Icon(Icons.card_membership_outlined,
            size:30,
            color:Colors.cyan[900],
          ),
          CardName(),
        ],
      ),
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('CUBE卡',
        style:TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),
      ),
    );
  }
}



class CardIcon extends StatelessWidget {
  const CardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.card_membership_outlined,
      size:30,
      color:Colors.cyan[900],
    );
  }
}