import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/model/bank.dart';
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
      child:SizedBox(
        width:80,
        child:Column(
          children:[
            BankIcon(image:bankModel.image),
            BankName(id:bankModel.id,name:bankModel.name),
            SizedBox(height: 5,),
            if (cardItemViewModel.bankID == bankModel.id)
              BottomLine(),
          ]
        ),
      )
    );
  }
}

class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[400]!,  
        ),
        color:Palette.kToBlack[400],
      ),  
    );
  }
}

class BankIcon extends StatelessWidget {
  const BankIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        base64Decode(image), 
        width:70,
        height:50,
        gaplessPlayback:true,
      ),
    );
  }
}

class BankName extends StatelessWidget {
  const BankName({super.key, required this.id, required this.name});
  
  final String id;
  final String name;
  
  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);

    bool selected = cardItemViewModel.bankID == id;
    return FittedBox(
      fit:BoxFit.fill,
      child:Text(name,
        style: TextStyle(
          color: selected ? Palette.kToBlack[400] :Palette.kToBlack[400],
        ),  
      )
    );
  }
}

