import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/model/card_reward_type.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.tab.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';






class CardRewardItems extends StatelessWidget {
  const CardRewardItems({super.key});

  @override
  Widget build(BuildContext context) {
    

    CardRewardTabViewModel cardRewardTabViewModel = Provider.of<CardRewardTabViewModel>(context);
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    List<CardRewardModel> cardRewardModels = [];

    if(cardRewardTabViewModel.showAll) {
      cardRewardModels.addAll(cardRewardViewModel.evaluationCardRewardModels);
      cardRewardModels.addAll(cardRewardViewModel.activityCardRewardModels);
    }else {
      cardRewardModels.addAll(cardRewardViewModel.activityCardRewardModels);
    }

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(CardRewardModel cardRewardModel in cardRewardModels)
            CardRewardItem(cardRewardModel: cardRewardModel,),
        ]
      )
    );
  }
}

class CardRewardItem extends StatelessWidget {
  
  const CardRewardItem({super.key, required this.cardRewardModel});
  
  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child:Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Palette.kToBlack[0],
          borderRadius:BorderRadius.circular(10),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardRewardItemTitle(title: cardRewardModel.name),
            const SizedBox(height:10),
            CardRewardItemDuration(startDate: cardRewardModel.startDate,endDate: cardRewardModel.endDate,),
            const SizedBox(height:10),
            CardRewardLabels(cardRewardModel: cardRewardModel,),
            const SizedBox(height:10),
            CardRewardDescriptionItem(cardRewardModel: cardRewardModel,),
          ]
        )
      )
    );
  }
}


class CardRewardDescriptionItem extends StatefulWidget {
  const CardRewardDescriptionItem({super.key, required this.cardRewardModel});
  
  final CardRewardModel cardRewardModel;

  @override
  State<CardRewardDescriptionItem> createState() => _CardRewardDescriptionItemState();
}

class _CardRewardDescriptionItemState extends State<CardRewardDescriptionItem> 
  with SingleTickerProviderStateMixin<CardRewardDescriptionItem> {


  bool isMore = false;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

     _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    );
  
   
  }

  _toggleContainer() {
    if (_animation.status != AnimationStatus.completed) {
      _controller.forward();
    } else {
      _controller.animateBack(0, duration: const Duration(milliseconds: 500));
    }
  }

  @override
  Widget build(BuildContext context) {
    
    List<DescriptionModel> descriptions = widget.cardRewardModel.descriptions;
    bool needShow = true;
    if(descriptions.isEmpty || descriptions.length == 1){
      needShow = false; 
    }


    String showName = "顯示全部";
    if(isMore) {
      showName = '收合資訊';
    }


    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          
          CardRewardDescriptionFirst(descriptions: descriptions,),
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.vertical,
            child:CardRewardDescriptionMore(descriptions:descriptions),
          ),

          if(needShow)
            Container(
              alignment: Alignment.center,
              child:ShowBtn(name:showName, callback: () { 
                setState(() {
                  isMore = !isMore;
                  _toggleContainer();
                });
              },),
            ),
          
        ]
      )
    );
  }
}

class CardRewardDescriptionFirst extends StatelessWidget {
  const CardRewardDescriptionFirst({super.key, required this.descriptions});
  
  final List<DescriptionModel> descriptions;

  @override
  Widget build(BuildContext context) {
    if(descriptions.isEmpty) return Container();
    DescriptionModel description =  descriptions.first;
    return CardRewardDescription(description: description,);
  }
}

class ShowBtn extends StatelessWidget {
  const ShowBtn({super.key, required this.name, required this.callback});
  
  final String name;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        onPressed: (){
          callback();
        },
        style:ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]!,),
            shape:MaterialStatePropertyAll(
              RoundedRectangleBorder(
                side:BorderSide(
                  width:1.0,
                  color:Palette.kToBlack[100]!,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        child:Text(name)
      )
    );
  }
}


class CardRewardDescriptionMore extends StatelessWidget {
  const CardRewardDescriptionMore({super.key, required this.descriptions});

  final List<DescriptionModel> descriptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(int i = 1; i < descriptions.length; i++)
            CardRewardDescription(description: descriptions[i],),
        ]
      )
    );
  }
}


class CardRewardDescription extends StatelessWidget {
  const CardRewardDescription({super.key, required this.description});
  
  final DescriptionModel description;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(description.name,
            style: TextStyle(
              fontSize: 13,
              color: Palette.kToBlack[300],
            ),
          ),
          for(String desc in description.desc) 
            Text(desc,
              style: TextStyle(
                fontSize: 13,
                color: Palette.kToBlack[300],
              ),
            )
        ]
      )
    );
  }
}

class CardRewardLabels extends StatelessWidget {
  const CardRewardLabels({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;
  @override
  Widget build(BuildContext context) {

    cardRewardModel.cardRewardType;
    List<String> labelNames = [];
    if(cardRewardModel.cardRewardType ==  CardRewardTypeEnum.evaluation.index){
      labelNames.add("${cardRewardModel.reward.name}回饋");
    }

    List<TaskModel> tasks = cardRewardModel.tasks;
    List<String> taskLabelNames = [];
    for(TaskModel taskModel in tasks) {
      taskLabelNames.add(taskModel.name);
    }

   return Wrap(
    children:[
      for(String labelName in labelNames)
        Container(
          padding: const EdgeInsets.only(right:5, ),
          child:Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.kToYellow[400]!,
            ),
            child:Container(
              padding: const EdgeInsets.only(left:2,right:2),
              child:Text(labelName,
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              )
            ),
          ),
        ),
      for(String labelName in taskLabelNames)
        Container(
          padding: const EdgeInsets.only(right:5, ),
          child:Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.kToRed[100]!,
            ),
            child:Container(
              padding: const EdgeInsets.only(left:2,right:2),
              child:Text(labelName,
                style: TextStyle(
                  color:Palette.kToBlack[0],
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              )
            ),
          ),
        ),

        

      ]
   );
   
  }
}

class CardRewardItemDuration extends StatelessWidget {
  const CardRewardItemDuration({super.key, required this.startDate, required this.endDate});
  final DateTime startDate;
  final DateTime endDate;
  @override
  Widget build(BuildContext context) {
     
     String startDateStr = DateFormat('yyyy/MM/dd').format(startDate);
     String endDateStr = DateFormat('yyyy/MM/dd').format(endDate);

    return Container(
      child:Text('$startDateStr ~ $endDateStr',
        style: TextStyle(
          color: Palette.kToBlack[200],
          fontSize: 13,
        ),
      )
    );
  }
}

class CardRewardItemTitle extends StatelessWidget {
  const CardRewardItemTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      )
    );
  }
}