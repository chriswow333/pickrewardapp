


import 'dart:typed_data';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


import 'package:flutter/material.dart';
import 'package:pickrewardapp/repo/card/model/card.dart';
import 'package:pickrewardapp/repo/card/model/card_header.dart';
import 'package:pickrewardapp/repo/image/viewmodel/image.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/pages/card/viewmodel/card.item.dart';
import 'package:pickrewardapp/pages/card/screen/cardreward.dart';
import 'package:provider/provider.dart';



class CardItems extends StatelessWidget {
  const CardItems({super.key});


  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    
    final bankID = cardItemViewModel.bankID;

    // if(bankID == "") {
    //   List<CardItemModel> cardItemModels = cardItemViewModel.getLatestCards();
    //   if(cardItemModels.isEmpty) {
    //     cardItemViewModel.fetchLatestCards();
    //   }
      
    //   return LatestCardItems(cardItemModels: cardItemModels,);
    // }

    return CardItemsByBankID();
      
  }
}



// class LatestCardItems extends StatelessWidget {
//   const LatestCardItems({super.key, required this.cardItemModels});
//   final List<CardItemModel> cardItemModels;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             Text('近期更新',
//               style: TextStyle(
//                 color:Palette.kToBlack[600],
//               ),
//             ),
//             Expanded(
//               child:SingleChildScrollView(
//                 child:Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children:[
//                     for(CardItemModel cardItemModel in cardItemModels)
//                       CardItem(cardItemModel:cardItemModel),
//                   ],
//                 ),
//               ),
//             ),
//           ]
//         )
//       );
//   }
// }


class CardItemsByBankID extends StatelessWidget {
  const CardItemsByBankID({super.key});


  @override
  Widget build(BuildContext context) {
    
    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    List<CardItemModel> cardItemModels = cardItemViewModel.getCardsByBankID(cardItemViewModel.bankID);
    return Container(
      padding: EdgeInsets.all(8),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
         
          Expanded(
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  for(CardItemModel cardItemModel in cardItemModels)
                    CardItem(cardItemModel:cardItemModel),
                    
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}



class CardItem extends StatelessWidget {

  const CardItem({super.key, required this.cardItemModel});
  
  final CardItemModel cardItemModel;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(8),
      child:Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color:Colors.white,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color:Palette.kToBlack[0],
        ),
        child:TextButton(
          onPressed: (){

            FocusScope.of(context).unfocus();

            CardHeaderItemModel cardHeaderItemModel = CardHeaderItemModel(
              id:cardItemModel.id,
              name:cardItemModel.name,
              bankName: 'bank name',
              descriptions:cardItemModel.descriptions,

              createDate: cardItemModel.createDate,
              updateDate: cardItemModel.updateDate,
              linkUrl: cardItemModel.linkURL,

            );


            showCupertinoModalBottomSheet(
              context: context,
              expand: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                ),
              builder: (context) {
                return CardContentScreen(cardHeaderItemModel:cardHeaderItemModel);
              },
            );

          },
          style:const ButtonStyle(
            splashFactory:NoSplash.splashFactory,
          ),
          child:Container(
            padding: const EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                CardIcon(imageName: cardItemModel.imageName,),
                const SizedBox(width:24),
                Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      CardName(cardName: cardItemModel.name,),
                      CardDescs(descs:cardItemModel.descriptions),
                    ]
                  )
                )
              ]
            )
          )
        ),
      )
    );
  }
}


class CardDescs extends StatelessWidget {
  const CardDescs({super.key, required this.descs});

  final List<String> descs;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.only(top:5,),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String desc in descs) 
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child:Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    width: 5,
                    height:5,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color:Palette.kToBlack[300],
                    ),
                  ),
                  const SizedBox(width:10),
                  Expanded(
                    child:Text(desc,
                      style:TextStyle(
                        color:Palette.kToBlack[900],
                        fontSize: 12,
                      ),
                      maxLines: null,
                    ),    
                  )
                  
                ]
              )
              
            ),
        ]
      )
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.imageName});

  final String imageName;
  @override
  Widget build(BuildContext context) {


    if(ImageService().hasImage("card",imageName)){
      return Container(
        width:80,
        height:59,
        child:Image.memory(
          ImageService().getImage("card", imageName),
        )
      );

    }

    Future<Uint8List?> data = ImageService().downloadImage("card", imageName);
    return Container(
      width:80,
      height:59,
      child:FutureBuilder(
        future: data,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While waiting for the future to complete, show a placeholder
              return Text('');
            } else if (snapshot.hasError) {
              // If an error occurs, display an error message
              return Text('');
            } else {
              // If the future has completed successfully, display the image
              return Image.memory(snapshot.data!);
            }
          },
      ),
    );
  }
}




class CardName extends StatelessWidget {
  const CardName({super.key, required this.cardName});
  
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(cardName,
      style: TextStyle(
        fontSize: 14,
        color:Palette.kToBlack[600],
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}

