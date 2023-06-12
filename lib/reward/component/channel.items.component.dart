


import 'package:flutter/material.dart';

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),
          ChannelItem(),  
          
        ]
      ),
    );
  }
}

class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
    
      onPressed: (){},
      child:Column(
        children:[
          ChannelIcon(),
          ChannelName(),
        ],
      ),
    );
  }
}



class ChannelIcon extends StatelessWidget {
  const ChannelIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        color:Colors.teal[700],
        Icons.shopping_bag_sharp,
      )
    );
  }
}

class ChannelName extends StatelessWidget {
  const ChannelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '網路購物',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[900],
        ),  
      )
    );
  }
}


