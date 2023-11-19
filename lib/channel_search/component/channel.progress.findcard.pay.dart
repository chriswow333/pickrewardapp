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
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
      ),
      padding: EdgeInsets.all(10),
      child:Row(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height:10,),
              PayName(),
              SizedBox(height:10,),
              PayUsage(),
              // Divider(),
              // PayItems(),
            ]
          )
        ]
      )
      
    );
  }
}

class PayUsage extends StatelessWidget {
  const PayUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Wrap(
        spacing: 10,
        runSpacing: 10,
        children:[
          PayUse(),
          PayNoUse(),
        ]
      )
    );
  }
}


class PayNoUse extends StatelessWidget {
  const PayNoUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        onPressed: (){},
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text('不使用',
          style:TextStyle(
            // fontSize: 16,
            color:Palette.kToBlack[500],
          )
        )
      )
    );
  }
}
class PayUse extends StatelessWidget {
  const PayUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        onPressed: (){},
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:10, bottom: 10)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text('使用',
          style:TextStyle(
            // fontSize: 16,
            color:Palette.kToBlack[500],
          )
        )
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
  }
}

class PayItem extends StatelessWidget {
  const PayItem({super.key, required this.payItemModel});

  final PayItemModel payItemModel;


  @override
  Widget build(BuildContext context) {
    String id = payItemModel.id;

    RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    

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
          alignment: Alignment.center,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              PayItemIcon(payItemModel:payItemModel),
              PayItemName(name:payItemModel.name),
            ],
          ),
        ),
      )
    );
  }
}

class PayItemIcon extends StatelessWidget {
  const PayItemIcon({super.key, required this.payItemModel});
  
  final PayItemModel payItemModel;
  
  @override
  Widget build(BuildContext context) {

      RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
      bool selected = rewardSelectedViewModel.existSelectedPayID(payItemModel.id);

    return Stack(
      alignment:Alignment.center,
      children:[
        Container(
          decoration: selected?BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Palette.kToYellow[300]!,
            ),
            shape: BoxShape.circle,
          ):null,
          width: 55,
          height: 55,
        ),
        ClipOval(
          child:Image.memory(
            gaplessPlayback: true,
            base64Decode(payItemModel.image), 
            width:50,
            height:50,
          ),
        )
      ]
    )
    ;
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

