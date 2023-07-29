

import 'package:flutter/material.dart';


class CardRewardEvaluationProgressChannel extends StatelessWidget {
  const CardRewardEvaluationProgressChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        ChannelCategoryTypes(),
        ChannelItems(),
      ]
    );
  }
}


class ChannelCategoryTypes extends StatelessWidget {
  const ChannelCategoryTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children:[
            ChannelCategoryType(),
            ChannelCategoryType(),
            ChannelCategoryType(),
            
          ]
        ),
      )
    );
  }
}

class ChannelCategoryType extends StatelessWidget {
  const ChannelCategoryType({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child:Column(
        children:[
          ChannelCategoryTypeIcon(),
          ChannelCategoryName(),
        ]
      )
    );
  }
}


class ChannelCategoryTypeIcon extends StatelessWidget {
  const ChannelCategoryTypeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        color:Colors.teal[700],
        Icons.shopping_bag_sharp,
      )
    );
  }
}


class ChannelCategoryName extends StatelessWidget {
  const ChannelCategoryName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '網路購物',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[900],
        ),  
      )
    );
  }
}

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:400,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.zero,  
        children:[
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
        ],
      ),
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key});

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
          EdgeInsets.fromLTRB(0, 12, 0, 0),
        ),
      ),
      onPressed:(){
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            ChannelItemIcon(),
            ChannelItemName(),
          ],
        ),
      ),
    );
  }
}



class ChannelItemIcon extends StatelessWidget {
  const ChannelItemIcon({super.key});
  
  // final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        Icons.ac_unit_rounded,
        size: 40,
      ),
      
    );
  }
}


class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key});
  // final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        'hello',
        style: 
        TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}

