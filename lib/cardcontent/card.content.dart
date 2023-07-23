

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
            Text('發設忿大章點晝，爪虫的家數起了一難佈發設忿大章點晝，爪虫的家數起了一難佈發設忿大章點晝，爪虫的家數起了一難佈',
          style:TextStyle(
            color:Colors.cyan[900],
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ]
      );
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
      mainAxisAlignment: MainAxisAlignment.start,
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


