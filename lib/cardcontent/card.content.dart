

import 'package:flutter/material.dart';


class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:50),
        child: CardContentPage(),
      ),
    );
  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Banner(),
          SizedBox(height:20),
          CardContent(),
          Divider(),
          CardFunTab(),
          CardRewardItems(),
        ]
      );
  }
}


class CardFunTab extends StatelessWidget {
  const CardFunTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          TextButton(
            onPressed: (){},
            child:Text('卡片回饋',
              style:TextStyle(
                color:Colors.cyan[900],
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child:Text('點我辦卡',
              style:TextStyle(
                color:Colors.cyan[900],
              ),
            ),
          ),
        ]
      )
    );
  }
}


class CardRewardItems extends StatelessWidget {
  const CardRewardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      child:SingleChildScrollView(
        child:Column(
          children:[
            // CardRewardItem(),
            // CardRewardItem(),
            // CardRewardItem(),
            // CardRewardItem(),
            // CardRewardItem(),
            // CardRewardItem(),
            // CardRewardItem(),
            CardRewardItem(),

          ]
        ),
      ),
    );
  }
}


class CardRewardItem extends StatelessWidget {
  const CardRewardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Container(
          child:Row(
            children:[
              CardRewardType(),
              CardRewardName(),
            ]
          )
        )
      )
    );
  }
}

class CardRewardType extends StatelessWidget {
  const CardRewardType({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('現金回饋',
      style:TextStyle(
        color:Colors.cyan[900],
        fontSize: 20,
      ),
    );
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:270,
      padding: const EdgeInsets.only(left:20),
      child:
        Text('優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比',
          style:TextStyle(
            color:Colors.cyan[900],
            fontSize: 18,
            overflow: TextOverflow.clip,
          ),
      )
    );
  }
}

class CardRewardDesc extends StatelessWidget {
  const CardRewardDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CardImage(),
        Expanded(
          child:CardDescriptions(),
        ),
        
      ]
    );
  }
}

class CardDescriptions extends StatelessWidget {
  const CardDescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardDescriptionItem(),
        CardDescriptionItem(),
        CardDescriptionItem(),

      ]
    );
  }
}


class CardDescriptionItem extends StatelessWidget {
  const CardDescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(bottom: 10),
      child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Icon(Icons.arrow_right),
        Flexible(
          child: Text('發設忿大章點晝，爪虫的家數起了一難佈發設忿大章點晝，爪虫的家數起了一難佈發設忿大章點晝，爪虫的家數起了一難佈',
            style:TextStyle(
              color:Colors.cyan[900],
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ]
    )
    );
    ;
  }
}



class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height:50,
      child:Placeholder(),
    );
  }
}


class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '找CoCo',
      style: TextStyle(
        fontSize: 20,
      ),
      
    );
  }
}


