import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';


class PayWidget extends StatelessWidget {
  const PayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 0.5)
          ),
        ],
      ),
      child:Row(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              PayName(),
              SizedBox(height:10,),
              PayItems(),
            ]
          )
        ]
      )
      
    );
  }
}

class PayName extends StatelessWidget {
  const PayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('行動支付',
      style: TextStyle(
        fontSize: 20,
        color: Palette.kToBlack[400],
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

    return Container(
      width:MediaQuery.of(context).size.width - 30,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        
        child:Row(
          children:[
            for(PayItemModel payItemModel in payItemModels)
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:PayItem(payItemModel:payItemModel),  
              ),
          ]
        ),
      )
    );
    ;
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

    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1)
          ),
        ],
      ),
      child:TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          side:_selected ? MaterialStatePropertyAll(BorderSide(width:1.0)):null,
          padding:const MaterialStatePropertyAll(
            EdgeInsets.fromLTRB(10, 15, 10, 5),
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
      )
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
        width:60,
        height:40,
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
      child:Text(name,
        style: 
        TextStyle(
          fontSize: 15,
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}

