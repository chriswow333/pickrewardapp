


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:provider/provider.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    
    CardViewModel cardViewModel = Provider.of<CardViewModel>(context);
    CardItemModel cardItemModel = cardViewModel.get();
    
    
    
    return Row(
      children:[
        CardTitle(name:cardItemModel.name, image:cardItemModel.image),
        SizedBox(width:20),
        Expanded(
          child:CardDescriptions(descs: cardItemModel.descriptions,),
        ),
      ]
    );
  }
}

class CardDescriptions extends StatelessWidget {
  const CardDescriptions({super.key, required this.descs});

  final List<String> descs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        for (String desc in descs)
          CardDescriptionItem(desc:desc),

      ]
    );
  }
}


class CardDescriptionItem extends StatelessWidget {
  const CardDescriptionItem({super.key, required this.desc,});

  final String desc;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:const EdgeInsets.only(bottom: 10),
      child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Flexible(
          child: Text(desc,
            style:TextStyle(
              color:Colors.cyan[900],
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ]
    )
    );
  }
}



class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.name, required this.image});
  
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
     child:Column(
        children:[
          Image.memory(
              base64Decode(image), 
              width:70,
              height:70,
          ),
          CardName(name:name),
        ],
      ),
    );
  }
}


class CardName extends StatelessWidget {
  const CardName({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style:TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),
      ),
    );
  }
}
