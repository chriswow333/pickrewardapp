


import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        CardImage(),
        Expanded(
          child:CardRewardDescriptions(),
        ),
      ]
    );
  }
}

class CardRewardDescriptions extends StatelessWidget {
  const CardRewardDescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardDescriptionItem(),
        // CardDescriptionItem(),
        // CardDescriptionItem(),

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
