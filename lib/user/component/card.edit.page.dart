

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/bank/model/bank.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/model/user_card.dart';
import 'package:pickrewardapp/user/viewmodel/card.list.dart';
import 'package:pickrewardapp/user/viewmodel/user.card.dart';
import 'package:provider/provider.dart';


class UserCardEditPage extends StatelessWidget {
  const UserCardEditPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const CupertinoScaffold(
      overlayStyle:SystemUiOverlayStyle(
        statusBarColor: Colors.white, 
        statusBarBrightness:Brightness.light,
      ),
      body: Scaffold(
        body: SafeArea(
          child:UserCardListComponent(),
        ),
      )
    );
  }
}



class UserCardListComponent extends StatelessWidget {
  const UserCardListComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers:[
        ChangeNotifierProvider<UserCardListViewModel>(create:(_)=>UserCardListViewModel()),
        ChangeNotifierProvider<UserCardViewModel>(create:(_)=>UserCardViewModel()),
      ],
      child:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Flexible(
              flex:2,
              child: Container(
                // decoration: BoxDecoration(
                //   color:Palette.kToBlack[20],
                // ),
                padding: const EdgeInsets.all(10),
                child:const Column(
                  children:[
                    UserCardTitle(),
                    UserCardItems(),
                  ]
                )
              ),
            ),
            Container(
              child:const Text('卡片列表',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            Flexible(
              flex:2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child:const AllCardItems(),
              ),
            ),
          ],
        ),
      )
    );
  }
}



class UserCardItems extends StatelessWidget {
  const UserCardItems({super.key});

  @override
  Widget build(BuildContext context) {

    UserCardViewModel userCardViewModel = Provider.of<UserCardViewModel>(context);
    List<UserCardModel> userCardModels = userCardViewModel.userCardModels;

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const CardSearch(), 
          const SizedBox(height:30),
          Container(
            child:const Text('持有的信用卡',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height:20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children:[
                for(UserCardModel userCardModel in userCardModels)
                  UserCardItem(userCardModel: userCardModel,),
              ]
            )
          ),
          
        ]
      )
    );
  }
}


class UserCardItem extends StatelessWidget {
  const UserCardItem({super.key, required this.userCardModel});

  final UserCardModel userCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          if(userCardModel.cardImage != null) 
          Image.memory(
            gaplessPlayback: true,
            base64Decode(userCardModel.cardImage ?? ""), 
            width:80,
            height:70,
          ),
          Container(
            child:Text(userCardModel.cardName ?? "")
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
          const SizedBox(
            height:50,
          ),
          Container(
            height:40,
            padding: const EdgeInsets.only(left:10, right:10),
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

    UserCardListViewModel userCardListViewModel = Provider.of<UserCardListViewModel>(context);
    userCardListViewModel.fetchBanks();

    List<BankModel> bankModels = userCardListViewModel.bankModels;
    
    return Container(
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            for(BankModel bankModel in bankModels) 
              UserCardGroupByBank(bankModel: bankModel,),
          ]
        )
      )
    );
  }
}

class UserCardGroupByBank extends StatelessWidget {
  const UserCardGroupByBank({super.key, required this.bankModel});
  
  final  BankModel bankModel; 

  @override
  Widget build(BuildContext context) {

    UserCardListViewModel userCardListViewModel = Provider.of<UserCardListViewModel>(context);
    userCardListViewModel.fetchCardsByBankID(bankModel.id);

    List<CardItemModel> cardItems = userCardListViewModel.cardItemsModelByBankID(bankModel.id);

    return Container(
      padding: const EdgeInsets.only(top:20, bottom: 20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          BankTitle(title: bankModel.name,),
          const Divider(),
          for(CardItemModel cardItemModel in cardItems)
            CardItem(cardItemModel: cardItemModel,),

        ]
      )
    );
  }
}

class BankTitle extends StatelessWidget {
  const BankTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(title)
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.cardItemModel});

  final CardItemModel cardItemModel;

  @override
  Widget build(BuildContext context) {

    UserCardViewModel userCardViewModel = Provider.of<UserCardViewModel>(context);

    return Container(
      padding: const EdgeInsets.only(top:10, bottom: 10),
      child:Row(
        children:[
          Image.memory(
            gaplessPlayback: true,
            base64Decode(cardItemModel.image), 
            width:80,
            height:70,
          ),
          Container(
            child:Text(cardItemModel.name)
          ),
          Expanded(
            child:GestureDetector(
              onTap:(){
                userCardViewModel.toggleCard(cardItemModel);
              },
              child:Container(
                alignment: Alignment.centerRight,
                child:const Icon(Icons.add_circle_outline_outlined)
              )
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
      child:const Row(
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
      padding: const EdgeInsets.only(left:10, top:10),
      child:const Text('儲存')
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
          const SizedBox(height:10),
          const Text('我的信用卡',
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
      padding: const EdgeInsets.only(left:10, top:10),
      child:GestureDetector(
        onTap:(){
          Navigator.pop(context);
        },
        child:const Text('取消')
      )
    );
  }
}