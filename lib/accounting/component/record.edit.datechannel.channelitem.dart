



import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/accounting/viewmodel/summary.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class ChannelItemsPage extends StatelessWidget {
  const ChannelItemsPage({super.key, required this.userRecordViewModel});

  final RecordViewModel userRecordViewModel;

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      overlayStyle:const SystemUiOverlayStyle(
        statusBarColor: Colors.white, 
        statusBarBrightness:
            Brightness.light 
      ),
      body: Scaffold(
        body: SafeArea(
          child:Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const ChannelItemsTitle(),
                const SizedBox(
                  height:20,
                ),
                Expanded(
                  child:ChannelItemGroup(userRecordViewModel: userRecordViewModel,),
                ),
              ]
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
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserRecordSummaryViewModel>(create:(_)=>UserRecordSummaryViewModel()),
      ],
      child:Container(
        child:Column(
          children:[
            SelfFillInChannel(userRecordViewModel: userRecordViewModel,),
            const SizedBox(height:10),
            Expanded(
              child:ChannelItemsByCategory(userRecordViewModel: userRecordViewModel,),
            ),
          ]
        )
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
  const ChannelItems({super.key, required this.userRecordViewModel});
  
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
              child:const Text('網購',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ),
            GridView.builder(
              shrinkWrap:true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelItem(userRecordViewModel:userRecordViewModel);
              }
            ),
          ]
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

class ChannelItemsTitle extends StatelessWidget {
  const ChannelItemsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Text('選擇一個消費通路',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color:Palette.kToBlack[600],
        ),
      )
    );
  }
}
