import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/pay.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel_search/viewmodel/pay.item.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.selected.dart';


class PayWidget extends StatelessWidget {
  const PayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          PayName(),
          SizedBox(height:10,),
          Row(
            children:[
              Expanded(
                child:PayItems(),
              )
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
        fontSize: 18,
        color: Palette.kToBlack[600],
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
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Wrap(
          spacing: 10,
          children:[
            for(PayItemModel payItemModel in payItemModels)
              PayItem(payItemModel:payItemModel),  
          ]
        ),
      )
    );
    ;
  }
}

class PayItem extends StatelessWidget {
  const PayItem({super.key, required this.payItemModel});

  final PayItemModel payItemModel;


  @override
  Widget build(BuildContext context) {
    String id = payItemModel.id;

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    
    bool selected = rewardSelectedViewModel.existSelectedPayID(id);

    return Container(
      child:TextButton(
        style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
        onPressed: (){
          rewardSelectedViewModel.payID = id;
        },
        child:Container(
          child:Stack(
            children:[
              Container(
                alignment: Alignment.center,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    PayItemIcon(image:payItemModel.image),
                    PayItemName(name:payItemModel.name),
                  ],
                ),
              ),

              if(selected)
                Container(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.check_circle_outlined,
                    color:Palette.kToOrange[600],
                    size:25,
                  ),
                ),
            ]
          )
        )
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

