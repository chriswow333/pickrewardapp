


import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/accounting/viewmodel/user.card.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/model/user_card.dart';
import 'package:provider/provider.dart';


class RecordEditCard extends StatelessWidget {
  const RecordEditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Container(
        padding: const EdgeInsets.all(10),
        child:Column(
          children:[
            RecordEditCardTitle(),
             SizedBox(
              height:20, 
            ), 
              CardItems(),
          ]
        ) 
      )
    );
  }
}




class RecordEditCardTitle extends StatelessWidget {
  const RecordEditCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('刷哪張信用卡?',
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )
          ),
          Container(
            child:GestureDetector(
              onTap:(){},
              child:Text('編輯',
                style:TextStyle(
                  color: Palette.kToYellow[400],
                )
              )
            )
          ),
        ]
      )
    );
  }
}


class CardItems extends StatelessWidget {
  const CardItems({super.key,});

  
  @override
  Widget build(BuildContext context) {

    UserCardViewModel userCardViewModel = Provider.of<UserCardViewModel>(context);
    List<UserCardModel> userCardModels = userCardViewModel.userCardModels;

    return Container(
      alignment: Alignment.centerLeft,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            for(UserCardModel userCardModel in userCardModels)
              CardItem(userCardModel:userCardModel),
          ] 
        )
      )
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.userCardModel});

  final UserCardModel userCardModel;

  @override
  Widget build(BuildContext context) {
      
    RecordViewModel recordViewModel = Provider.of<RecordViewModel>(context);
    bool chosen = recordViewModel.cardID == userCardModel.cardID;

    if(userCardModel.cardImage == null){
      return Container();
    }
    
    return GestureDetector(
      onTap:(){
        recordViewModel.cardID = userCardModel.cardID ?? "";
        recordViewModel.cardName = userCardModel.cardName ?? "";
      },
      child:
      Container(
        padding: const EdgeInsets.only(left:5, right:5),
        child:Container(
          padding: const EdgeInsets.only(left:5, right:5),
          decoration: BoxDecoration(
            border: chosen ?  Border.all(
              color:Palette.kToYellow[400]!,
              width: 2
            ):null,
          ),
          child:Image.memory(
            base64Decode(userCardModel.cardImage!), 
            width:80,
            height:70,
            gaplessPlayback:true,
          ),
        )
      )
    );
  }
}

