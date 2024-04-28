import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/viewmodel/recrod.channel.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/channel/model/channel.dart';
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
          ChangeNotifierProvider(create: (context)=> RecordChannelViewModel()),
          ChangeNotifierProvider(create: (context)=>RecordViewModel())
        ],
        child:CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
              border:null,
              transitionBetweenRoutes: false,
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
                child: ChannelItemGroup(userRecordViewModel: userRecordViewModel,),
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
        child:Placeholder(),
      );
    // RecordChannelViewModel recordChannelViewModel = Provider.of<RecordChannelViewModel>(context);
  
    // List<ChannelCategoryTypeModel> channelCategoryTypeModels = recordChannelViewModel.channelCategoryTypeModels;

    // return Container(
    //   child:Column(
    //     children:[
    //       SelfFillInChannel(userRecordViewModel: userRecordViewModel,),
    //       const SizedBox(height:10),
    //       Expanded(
    //         child:SingleChildScrollView(
    //           child:Column(
    //             children:[
    //               for(ChannelCategoryTypeModel channelCategoryTypeModel in channelCategoryTypeModels)
    //                 ChannelItems(channelCategoryTypeModel: channelCategoryTypeModel, userRecordViewModel: userRecordViewModel,),
    //             ]
    //           )
    //         ),
    //       ),
    //     ]
    //   )
    // );
  }
}


// class ChannelItems extends StatelessWidget {
//   const ChannelItems({super.key, required this.channelCategoryTypeModel, required this.userRecordViewModel,});
  
//   final ChannelCategoryTypeModel channelCategoryTypeModel;
//   final RecordViewModel userRecordViewModel;


//   @override
//   Widget build(BuildContext context) {

//     RecordChannelViewModel recordChannelViewModel = Provider.of<RecordChannelViewModel>(context);
//     recordChannelViewModel.initChannelModels(channelCategoryTypeModel.categoryType);

//     List<ChannelItemModel> channelItemModels = recordChannelViewModel.getChannelsByChannelCategoryType(channelCategoryTypeModel.categoryType);

//     return Container(
//       padding: const EdgeInsets.only(top:10, bottom: 10),
//       child:Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color:Palette.kToBlack[0],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             Container(
//               padding: const EdgeInsets.only(bottom: 20),
//               child:Text('${channelCategoryTypeModel.name}',
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               )
//             ),
//             GridView.builder(
//               shrinkWrap:true,
//               physics:const NeverScrollableScrollPhysics(), 
//               itemCount: channelItemModels.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//                 mainAxisSpacing: 15,
//                 crossAxisSpacing: 10,
//                 // childAspectRatio: 0.7,
//               ),
//               itemBuilder: (context, index){
//                 return ChannelItem(userRecordViewModel:userRecordViewModel, channelItemModel: channelItemModels[index],);
//               }
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }


// class ChannelItem extends StatelessWidget {
//   const ChannelItem({super.key, required this.userRecordViewModel, required this.channelItemModel});

//   final RecordViewModel userRecordViewModel;
//   final ChannelItemModel channelItemModel;
 
//   @override
//   Widget build(BuildContext context) {

//     RecordViewModel channelRecordViewModel = Provider.of<RecordViewModel>(context);
//     bool selected = userRecordViewModel.record.channelID == channelItemModel.id;

//     return GestureDetector(
//       onTap:(){
//         channelRecordViewModel.toggleChannel(channelItemModel.id, channelItemModel.name);
//         userRecordViewModel.toggleChannel(channelItemModel.id, channelItemModel.name);
//       },
//       child:Column(
//         children:[
//           Stack(
//             alignment:Alignment.center,
//             children:[
//               CircleAvatar(
//                 radius:14,
//                 backgroundColor:Palette.kToBlack[0],
//                 child:channelItemModel.image.isEmpty?
//                 Container()
//                 :
//                 Image.memory(
//                   gaplessPlayback: true,
//                   base64Decode(channelItemModel.image), 
//                   width:35,
//                   height:35,
//                 ),
//               ),
//             Container(
//               decoration: selected?BoxDecoration(
//                 border: Border.all(
//                   width: 1.5,
//                   color: Palette.kToYellow[300]!,
//                 ),
//                 shape: BoxShape.circle,
//               ):null,
//               width: 50,
//               height: 50,
//             ),
//             ]
//           ),
//           FittedBox(
//             fit: BoxFit.fitWidth, 
//             child:Text('${channelItemModel.name}',
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//           ),
//         ]
//       )
//     );
//   }
// }



// class SelfFillInChannel extends StatelessWidget {
//   const SelfFillInChannel({super.key, required this.userRecordViewModel});

//   final RecordViewModel userRecordViewModel;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color:Palette.kToBlack[0],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       height:40,
//       alignment: Alignment.centerLeft,
//       padding: const EdgeInsets.all(10),
//       child:TextField(
//         // controller:_searchController,
//         // textAlign: TextAlign.start,
//         textAlignVertical: TextAlignVertical.center,
//         // textAlignVertical:TextAlignVertical.bottom,
//         onChanged: (String value){
//           // searchCardViewModel.changeKeyword(value);
//           userRecordViewModel.record.channelName = value;
//           userRecordViewModel.record.channelID = "";

//         },
//         onEditingComplete: (){
//         },
//         onTap:(){
//           // searchCardViewModel.onFocusSearch();
//         },
//         decoration: const InputDecoration.collapsed(
//           hintText: '自行輸入',
//           // prefixIcon:const Icon(Icons.search),
//           // border:OutlineInputBorder(
//             // borderRadius: BorderRadius.circular(20.0),
//           // )
//         ),
//         style:const TextStyle(
//           fontSize:14,
//         ),
//       )
//     );
//   }
// }
