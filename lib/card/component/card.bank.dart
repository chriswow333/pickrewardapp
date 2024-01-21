import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/bank/model/bank.dart';
import 'package:pickrewardapp/card/viewmodel/bank.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';
import 'package:provider/provider.dart';


class BankItems extends StatelessWidget {
  const BankItems({super.key});

  @override
  Widget build(BuildContext context) {

    BankViewModel bankViewModel = Provider.of<BankViewModel>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          for(BankModel bankModel in bankViewModel.banks)
            BankItem(bankModel:bankModel),
        ]
      )
    );
  }
}


class BankItem extends StatelessWidget {
  
  const BankItem({super.key, required this.bankModel});

  final BankModel bankModel;

  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);

    return TextButton(
      onPressed: (){
        FocusScope.of(context).unfocus();
        cardItemViewModel.fetchCardsByBankIDWhenPressBank(bankModel.id);
      },
      style:const ButtonStyle(
        splashFactory: NoSplash.splashFactory,
      ),
      child:SizedBox(
        width:70,
        child:Column(
          children:[
            BankIcon(image:bankModel.image),
            BankName(id:bankModel.id,name:bankModel.name),
            const SizedBox(height: 5,),
            if (cardItemViewModel.bankID == bankModel.id)
              const BottomSpot(),
          ]
        ),
      )
    );
  }
}

class BottomSpot extends StatelessWidget {
  const BottomSpot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Palette.kToYellow[400],
      ),  
    );
  }
}

class BankIcon extends StatelessWidget {
  const BankIcon({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {


    return CircleAvatar(
      backgroundColor: Palette.kToBlack[0],
      child:Image.memory(
        base64Decode(image), 
        width:30,
        height:30,
        gaplessPlayback:false,
      )
    );

  }
}

class BankName extends StatelessWidget {
  const BankName({super.key, required this.id, required this.name});
  
  final String id;
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit:BoxFit.fill,
      child:Text(name,
        style: TextStyle(
          color: Palette.kToBlack[400],
        ),  
      )
    );
  }
}

