


import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';




class CardRewardEvaluationResultDetails extends StatelessWidget {
  const CardRewardEvaluationResultDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
          CardRewardEvaluatioResultDetail(),
        ]
      )
    );
    
  }
}

class CardRewardEvaluatioResultDetail extends StatelessWidget {
  const CardRewardEvaluatioResultDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Palette.kToBlack[0],
          borderRadius: BorderRadius.circular(20),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardRewardDurationDate(),
            SizedBox(height:10),
            CardRewardTag(),
            SizedBox(height:10),
            CardRewardName(),
            SizedBox(height:10),
            CardRewardEvaluationResultFeedback(),
            SizedBox(height:10),
            CardRewardEvaluationResultChannels(),
            SizedBox(height:10),
            ShowMore(),
          ]
        ) 
      )
    );
  }
}


class ShowMore extends StatelessWidget {
  const ShowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Palette.kToBlack[500],
              borderRadius: BorderRadius.circular(15),
            ),
            child:Text('查看更多',
              style:TextStyle(
                color:Palette.kToBlack[0],
              )
            )
          )
        ]
      )
    );
  }
}

class CardRewardEvaluationResultFeedback extends StatelessWidget {
  const CardRewardEvaluationResultFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('獲得 3% 30元',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}


class CardRewardEvaluationResultChannels extends StatelessWidget {
  const CardRewardEvaluationResultChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            child:Text('符合已選通路'),
          ),
          SizedBox(height:10),
          Wrap(
            children:[
                CardRewardEvaluationResultChannel(),
                CardRewardEvaluationResultChannel(),
                CardRewardEvaluationResultChannel(),
                CardRewardEvaluationResultChannel(),
                CardRewardEvaluationResultChannel(),
                CardRewardEvaluationResultChannel(),
            ]
          )
          
        ]
      )
    );
  }
}

class CardRewardEvaluationResultChannel extends StatelessWidget {
  const CardRewardEvaluationResultChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:2,),
      child:Text('蝦皮購物')
    );
  }
}




class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('節假日任刷3%現金回饋',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

class CardRewardDurationDate extends StatelessWidget {
  const CardRewardDurationDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          Text('2023/10/10 - 2023/12/31')
        ]
      )
      
    );
  }
}

class CardRewardTag extends StatelessWidget {
  const CardRewardTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          CardRewardType(),
          CardRewardLabel(),
          CardRewardLabel(),
        ]
      )
    );
  }
}

class CardRewardType extends StatelessWidget {
  const CardRewardType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:5, ),
      child:Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.kToYellow[300]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child:Text('現金回饋',
          style: TextStyle(
            color:Palette.kToYellow[300],
          ),
        )
      )
    );
  }
}
class CardRewardLabel extends StatelessWidget {
  const CardRewardLabel({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:5, ),
      child:Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color:Palette.kToRed[600]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child:Text('限定日',
          style: TextStyle(
            color:Palette.kToRed[600],
          ),
        )
      )
    );
  }
}