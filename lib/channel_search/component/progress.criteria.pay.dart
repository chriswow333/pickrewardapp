
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
        PayWhatever(),
        PayNoUse(),
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
          padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:const Duration(microseconds: 0),
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
          padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:const Duration(microseconds: 0),
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
