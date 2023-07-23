import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/card/viewmodel/pay.item.dart';
import 'package:pickrewardapp/card/viewmodel/reward.selected.dart';

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
    
    PayItemViewModel payItemViewModel = Provider.of<PayItemViewModel>(context);

    List<PayItemModel> payItemModels = payItemViewModel.pays;

    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          for(PayItemModel payItemModel in payItemModels)
            Container(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child:PayItem(payItemModel:payItemModel),  
            ),
            
        ]
      ),
    );
  }
}

class PayItem extends StatefulWidget {
  const PayItem({super.key, required this.payItemModel});

   final PayItemModel payItemModel;
  @override
  State<PayItem> createState() => _PayItemState();
}

class _PayItemState extends State<PayItem> {

  bool _selected = false;
  
  @override
  Widget build(BuildContext context) {
  
    String id = widget.payItemModel.id;
    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    _selected = rewardSelectedViewModel.existSelectedPayID(id);

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
          _selected ? 
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          )
          :null
        ),
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(5, 12, 5, 0),
        ),
      ),
      onPressed: (){
        
        setState((){
          _selected = !_selected;
        });

        rewardSelectedViewModel.payID = id;

      },
      child:Column(
        children:[
          PayItemIcon(image:widget.payItemModel.image),
          PayItemName(name:widget.payItemModel.name),
        ],
      ),
    );
  }
}




class PayItemIcon extends StatelessWidget {
  const PayItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:70,
        height:50,
      ),
    );
  }
}

class PayItemName extends StatelessWidget {
  const PayItemName({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // color:Colors.teal[900],
        // borderRadius: BorderRadius.circular(10),
      ),
      child:Text(name,
        style: 
        TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}

