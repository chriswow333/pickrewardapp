import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/card/model/bank.color.dart';
import 'package:pickrewardapp/repo/bank/model/bank.dart';
import 'package:pickrewardapp/pages/card/viewmodel/bank.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/pages/card/viewmodel/card.item.dart';
import 'package:provider/provider.dart';


class BankItems extends StatelessWidget {
  const BankItems({super.key});

  @override
  Widget build(BuildContext context) {

    BankViewModel bankViewModel = Provider.of<BankViewModel>(context);

    return Container(
      padding: const EdgeInsets.only(left:4,right:4),
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            for(BankModel bankModel in bankViewModel.banks)
              BankItem(bankModel:bankModel),
          ]
        )
      )
    );
    ;
  }
}

class BankItem extends StatelessWidget {
  
  const BankItem({super.key, required this.bankModel});

  final BankModel bankModel;

  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    return GestureDetector(
      onTap: (){
        cardItemViewModel.fetchCardsByBankIDWhenPressBank(bankModel.id);
      },
      child:Container(
        padding: EdgeInsets.only(left:10, right:10),
        child:Column(
          children:[
            BankIcon(id:bankModel.id),
            const SizedBox(height:4),
            BankName(id:bankModel.id,name:bankModel.name),
            const SizedBox(height:20),
            BottomLine(id:bankModel.id,),
          ]
        ),
      )
    );
  }
}



class BankIcon extends StatelessWidget {
  const BankIcon({super.key, required this.id,});
  final String id;
  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    String selectedBankID = cardItemViewModel.bankID;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Palette.kToBlack[0],
        border:Border.all(
          width: 2,
          color: selectedBankID == id ? Palette.kToBlack[700]!:Palette.kToBlack[20]!,
        ),
      ),
      padding: const EdgeInsets.all(5),
      child:  CircleAvatar(
        radius:15,
        backgroundColor: BankColorExtension.getColor(id),
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
    return SizedBox(
      child:Text(name,
        style: TextStyle(
          color: Palette.kToBlack[700],
          fontSize: 12
        ),  
      )
    );
  }
}

class BottomLine extends StatelessWidget {
  const BottomLine({super.key, required this.id,});
  final String id;
  @override
  Widget build(BuildContext context) {
    
    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    String selectedBankID = cardItemViewModel.bankID;

    return Container(
      width:32,
      height:3,
      color:selectedBankID == id ? Palette.kToBlack[700]:null
    );
  }
}