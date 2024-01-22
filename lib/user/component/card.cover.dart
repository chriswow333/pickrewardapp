


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/card.edit.page.dart';
import 'package:pickrewardapp/user/model/user_card.dart';
import 'package:pickrewardapp/user/viewmodel/user.card.dart';
import 'package:provider/provider.dart';

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Column(
        children:[
          MyCardListTitle(),
          MyCardListItems(),
        ]
      )
    );
  }
}


class MyCardListItems extends StatelessWidget {
  const MyCardListItems({super.key});

  @override
  Widget build(BuildContext context) {

    UserCardViewModel userCardViewModel = Provider.of<UserCardViewModel>(context);
    
    List<UserCardModel> userCardModels = userCardViewModel.userCardModels;
    return SizedBox(
      width:double.infinity,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Wrap(
          children:[
            for(UserCardModel userCardModel in userCardModels)
              MyCardListItem(userCardModel: userCardModel,),
          ]
        )
      )
      
    );
  }
}

class MyCardListItem extends StatelessWidget {
  const MyCardListItem({super.key, required this.userCardModel});
  final UserCardModel userCardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CardIcon(image:userCardModel.cardImage ?? ""),
          CardName(name: userCardModel.cardName ?? "" ,),
        ]
      )
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name)
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    if (image != "") {
      return Container(
        child:Image.memory(
              gaplessPlayback: true,
          base64Decode(image), 
          width:80,
          height:70,
        ),
      );
    } else {
      return Container();
    }
  }
}

class MyCardListTitle extends StatelessWidget {
  const MyCardListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    UserCardViewModel userCardViewModel = Provider.of<UserCardViewModel>(context);
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('我的信用卡',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            
          ),
          TextButton(
            onPressed: (){

             Future future = CupertinoScaffold.showCupertinoModalBottomSheet(
              context: context,
              expand: true,
              // shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              //   ),
              builder: (context) {
                return const UserCardEditPage();
              },
            );

            future.then((value) {
              userCardViewModel.fetchUserCardModels();
            });

            },
            child:Text('編輯',
              style: TextStyle(
                fontSize: 20,
                color: Palette.kToYellow[900],
              ),
            ),
          )
        ]
      )
    );
  }
}
