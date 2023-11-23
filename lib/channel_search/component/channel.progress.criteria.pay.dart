
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/pay_usage.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



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
      padding: const EdgeInsets.all(20),
      child:const Row(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height:10,),
              PayName(),
              SizedBox(height:10,),
              PayUsageWidget(),
            ]
          )
        ]
      )
      
    );
  }
}

class PayUsageWidget extends StatelessWidget {
  const PayUsageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 10,
      runSpacing: 10,
      children:[
        PayUse(),
        PayNoUse(),
        PayWhatever(),
      ]
    );
  }
}

class PayWhatever extends StatelessWidget {
  const PayWhatever({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    return Container(
      child:TextButton(
        onPressed: (){
          criteriaViewModel.payUsage = PayUsageEnum.whatever;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: criteriaViewModel.payUsage.compareTo(PayUsageEnum.whatever) == 0?
                Palette.kToYellow[400]!:Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text(PayUsageEnum.whatever.name,
          style:TextStyle(
            fontSize: 14,
            color:Palette.kToBlack[500],
          )
        )
      )
    );
  }
}


class PayNoUse extends StatelessWidget {
  const PayNoUse({super.key});

  @override
  Widget build(BuildContext context) {
      
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    return Container(
      child:TextButton(
        onPressed: (){
          criteriaViewModel.payUsage = PayUsageEnum.no;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: criteriaViewModel.payUsage.compareTo(PayUsageEnum.no) == 0?
                Palette.kToYellow[400]!:Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text(PayUsageEnum.no.name,
          style:TextStyle(
            fontSize: 14,
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
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);


    return Container(
      child:TextButton(
        onPressed: (){
          criteriaViewModel.payUsage = PayUsageEnum.use;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: criteriaViewModel.payUsage.compareTo(PayUsageEnum.use) == 0?
                Palette.kToYellow[400]!:Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:Duration(microseconds: 0),
        ),
        child:Text(PayUsageEnum.use.name,
          style:TextStyle(
            fontSize: 14,
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
        fontSize: 16,
        color: Palette.kToBlack[600],
        fontWeight: FontWeight.bold,
      ),  
    );
  }
}

// class PayItems extends StatelessWidget {
//   const PayItems({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     PayItemViewModel payItemViewModel = Provider.of<PayItemViewModel>(context);

//     List<PayItemModel> payItemModels = payItemViewModel.pays;

//     return Container(
//       child:SingleChildScrollView(
//         scrollDirection:Axis.horizontal,
//         child:Wrap(
//           spacing: 10,
//           children:[
//             for(PayItemModel payItemModel in payItemModels)
//               PayItem(payItemModel:payItemModel),  
//           ]
//         ),
//       )
//     );
//   }
// }

// class PayItem extends StatelessWidget {
//   const PayItem({super.key, required this.payItemModel});

//   final PayItemModel payItemModel;


//   @override
//   Widget build(BuildContext context) {
//     String id = payItemModel.id;

//     RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
    

//     return Container(
//       child:TextButton(
//         style:ButtonStyle(
//         alignment: Alignment.center,
//         splashFactory:NoSplash.splashFactory,
//         padding: MaterialStatePropertyAll(
//           EdgeInsets.zero,
//         )
//       ),
//         onPressed: (){
//           rewardSelectedViewModel.payID = id;
//         },
//         child:Container(
//           alignment: Alignment.center,
//           child:Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children:[
//               PayItemIcon(payItemModel:payItemModel),
//               PayItemName(name:payItemModel.name),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

// class PayItemIcon extends StatelessWidget {
//   const PayItemIcon({super.key, required this.payItemModel});
  
//   final PayItemModel payItemModel;
  
//   @override
//   Widget build(BuildContext context) {

//       RewardSelectedViewModel rewardSelectedViewModel = Provider.of<RewardSelectedViewModel>(context);
//       bool selected = rewardSelectedViewModel.existSelectedPayID(payItemModel.id);

//     return Stack(
//       alignment:Alignment.center,
//       children:[
//         Container(
//           decoration: selected?BoxDecoration(
//             border: Border.all(
//               width: 1.5,
//               color: Palette.kToYellow[300]!,
//             ),
//             shape: BoxShape.circle,
//           ):null,
//           width: 55,
//           height: 55,
//         ),
//         ClipOval(
//           child:Image.memory(
//             gaplessPlayback: true,
//             base64Decode(payItemModel.image), 
//             width:50,
//             height:50,
//           ),
//         )
//       ]
//     )
//     ;
//   }
// }

// class PayItemName extends StatelessWidget {
//   const PayItemName({super.key, required this.name});

//   final String name;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Text(name,
//         style: 
//         TextStyle(
//           fontSize: 15,
//           color: Palette.kToBlack[600],
//         ),
//       )
//     );
//   }
// }

