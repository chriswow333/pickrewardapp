

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/config/palette.dart';


class UserCardEditPage extends StatelessWidget {
  const UserCardEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      overlayStyle:SystemUiOverlayStyle(
        statusBarColor: Colors.white, 
        statusBarBrightness:
            Brightness.light 
      ),
      body: Scaffold(
        body: SafeArea(
          child:Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Flexible(
                  flex:2,
                  child: Container(
                    decoration: BoxDecoration(
                      color:Palette.kToBlack[20],
                    ),
                    padding: EdgeInsets.all(10),
                    child:Column(
                      children:[
                        UserCardTitle(),
                        UserCardItems(),
                      ]
                    )
                  ),
                ),
                Flexible(
                  flex:2,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child:AllCardItems(),
                  )
                  
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


class UserCardItems extends StatelessWidget {
  const UserCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardSearch(), 
          SizedBox(height:30),
          Container(
            child:Text('持有的信用卡',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height:20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children:[
                UserCardItem(),
                UserCardItem(),
                UserCardItem(),
                UserCardItem(),
                UserCardItem(),
                UserCardItem(),
              ]
            )
          ),
          
        ]
      )
    );
  }
}


class UserCardItem extends StatelessWidget {
  const UserCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Image.asset('images/logo.png',),
          Container(
            child:Text('信用卡名稱')
          ),
        ]
      )
    );
  }
}



class CardSearch extends StatelessWidget {
  const CardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          SizedBox(
            height:50,
          ),
          Container(
            height:40,
            padding: EdgeInsets.only(left:10, right:10),
            child:TextField(
              controller:null,
              textAlignVertical:TextAlignVertical.bottom,
              onChanged: (String value){
                // searchCardViewModel.changeKeyword(value);
              },
              onEditingComplete: (){
                // searchCardViewModel.searchCard();
              },
              onTap:(){
                // searchCardViewModel.onFocusSearch();
              },
              decoration: InputDecoration(
                hintText: '搜尋',
                prefixIcon:const Icon(Icons.search),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
              style:const TextStyle(
                // fontSize:12,
              ),
            ),
          ),
          
        ]
      )
    );
  }
}


class AllCardItems extends StatelessWidget {
  const AllCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            UserCardByBank(),
            UserCardByBank(),
            UserCardByBank(),
            UserCardByBank(),
            UserCardByBank(),
            UserCardByBank(),
          ]
        )
      )
    );
  }
}


class UserCardByBank extends StatelessWidget {
  const UserCardByBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          BankTitle(),
          Divider(),
          CardItem(),
        ]
      )
    );
  }
}

class BankTitle extends StatelessWidget {
  const BankTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('國泰世華銀行')
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          Image.asset('images/logo.png',),
          Container(
            child:Text('信用卡名稱')
          ),
          Expanded(
            child:Container(
              alignment: Alignment.centerRight,
              child:Icon(Icons.add_circle_outline_outlined)
            )
          ),
          
        ]
      )
    );
  }
}

class UserCardTitle extends StatelessWidget {
  const UserCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          GobackPage(),
          UserCardTitleName(),
          SaveUserCard(),
        ]
      )
    );
  }
}

class SaveUserCard extends StatelessWidget {
  const SaveUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10, top:10),
      child:Text('儲存')
    );
  }
}

class UserCardTitleName extends StatelessWidget {
  const UserCardTitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Container(
            width:50,
            height:5,
            decoration: BoxDecoration(
              color: Palette.kToBlack[500],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height:10),
          Text('我的信用卡',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
      )
      
    );
  }
}

class GobackPage extends StatelessWidget {
  const GobackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10, top:10),
      child:GestureDetector(
        onTap:(){
          Navigator.pop(context);
        },
        child:Text('取消')
      )
    );
  }
}