import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/viewmodel/bank.dart';
import 'package:provider/provider.dart';


class BankItems extends StatelessWidget {
  const BankItems({super.key});

  @override
  Widget build(BuildContext context) {
    BankViewModel bankViewModel = Provider.of<BankViewModel>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    return TextButton(
      onPressed: (){},
      style: ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.fromLTRB(5, 0, 5, 0),),
      ),
      child:Column(
        children:[
          BankIcon(image:bankModel.image),
          BankName(name:bankModel.name),
        ]
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
        height:70,
      ),
    );
  }
}

class BankName extends StatelessWidget {
  const BankName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,
      style:TextStyle(
        fontSize: 12,
        color:Colors.cyan[900],
      ),
    );
  }
}


class SearchCardBar extends StatefulWidget {
  const SearchCardBar({ Key? key }) : super(key: key);

  @override
  _SearchCardBarState createState() => _SearchCardBarState();
}

class _SearchCardBarState extends State<SearchCardBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40,
      child:TextField(
        controller:_searchController,
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // creditCardViewModel.searchKeyword(value);
        },
        decoration: InputDecoration(
          hintText: '信用卡',
          prefixIcon:const Icon(Icons.search),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              // creditCardViewModel.searchKeyword('');
            },
          ),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
        style:const TextStyle(
          fontSize:18,
        ),
      ),
    );
  }
}
