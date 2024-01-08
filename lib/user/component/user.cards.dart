


import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/user.card.edit.dart';

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
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
    return Container(
      width:double.infinity,
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Wrap(
          children:[
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
            MyCardListItem(),
          ]
        )
      )
      
    );
  }
}

class MyCardListItem extends StatelessWidget {
  const MyCardListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CardIcon(),
          CardName(),

        ]
      )
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('國泰CUBE卡')
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.asset(
          width:100,
          height:80,
          'images/logo.png',
        ),
    );
  }
}

class MyCardListTitle extends StatelessWidget {
  const MyCardListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('我的信用卡',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            
          ),
          TextButton(
            onPressed: (){

               CupertinoScaffold.showCupertinoModalBottomSheet(
                context: context,
                expand: true,
                // shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                //   ),
                builder: (context) {
                  return UserCardEditPage();
                },
              );

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
