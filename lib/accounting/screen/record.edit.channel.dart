



import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/viewmodel/recrod.channel.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class RecordChannelScreen extends StatelessWidget {
  const RecordChannelScreen({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body:MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context)=>RecordChannelViewModel()),
        ],
        child:CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
              border:null,
              transitionBetweenRoutes: false,
              // leading: Container(),
              middle: Container(
                child:Text('選擇一個消費通路',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:Palette.kToBlack[600],
                  ),
                )
              ),
            ),
          child:SizedBox.expand(
            child: SafeArea(
              child:Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Expanded(
                      child:ChannelItemGroup(userRecordViewModel: userRecordViewModel,),
                    ),
                  ]
                )
              )
            )
          )
        )
      )
    );
  }
}

class ChannelItemGroup extends StatelessWidget {
  const ChannelItemGroup({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:Column(
        children:[
          SelfFillInChannel(userRecordViewModel: userRecordViewModel,),
          const SizedBox(height:10),
          Expanded(
            child:ChannelItemsByCategory(userRecordViewModel: userRecordViewModel,),
          ),
        ]
      )
    );
  }
}

class ChannelItemsByCategory extends StatelessWidget {
  const ChannelItemsByCategory({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;

  @override
  Widget build(BuildContext context) {
    

    return Container(
      child:SingleChildScrollView(
        child:Column(
          children:[
              ChannelItems(userRecordViewModel: userRecordViewModel,),
          ]
        )
      )
    );
  }
}

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key, required this.userRecordViewModel,});
  
  final RecordViewModel userRecordViewModel;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10, bottom: 10),
      child:Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:Palette.kToBlack[0],
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child:const Text('搜尋結果',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ),
            GridView.builder(
              shrinkWrap:true,
              physics:const NeverScrollableScrollPhysics(), 
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelItem(userRecordViewModel:userRecordViewModel);
              }
            ),
          ],
        ),
      )
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        userRecordViewModel.channelID = "channelID";
        userRecordViewModel.channelName = "channelName";
      },
      child:const Column(
        children:[
          CircleAvatar(
            child:Text('Ava'),
          ),
          Text('hello'),
        ]
      )
    );
  }
}





class SelfFillInChannel extends StatelessWidget {
  const SelfFillInChannel({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      height:40,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      child:TextField(
        // controller:_searchController,
        // textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        // textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // searchCardViewModel.changeKeyword(value);
          userRecordViewModel.channelName = value;
          userRecordViewModel.channelID = "";

        },
        onEditingComplete: (){
          // searchCardViewModel.searchCard();
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: const InputDecoration.collapsed(
          hintText: '自行輸入',
          // prefixIcon:const Icon(Icons.search),
          // border:OutlineInputBorder(
            // borderRadius: BorderRadius.circular(20.0),
          // )
        ),
        style:const TextStyle(
          fontSize:14,
        ),
      )
    );
  }
}
