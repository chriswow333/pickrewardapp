



import 'package:flutter/material.dart';

class CarContentTab extends StatelessWidget {
  const CarContentTab({super.key});

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
