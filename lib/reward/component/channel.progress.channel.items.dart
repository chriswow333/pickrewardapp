


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






class ShopStores extends StatelessWidget {
  const ShopStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:400,
      child:GridView.count(  
        crossAxisCount: 4,  
        crossAxisSpacing: 4.0,  
        mainAxisSpacing: 8.0,  
        children:[
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
            ShopStoreItem(),
        ],
      ),
    );
  }
}


class ShopStoreItem extends StatelessWidget {
  const ShopStoreItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        splashFactory:NoSplash.splashFactory,
      ),
      onPressed: (){},
      child:Container(
        child:Column(
          children:[
            ShopStoreIcon(),
            ShopStoreName(),
          ],
        ),
      ),
    );
  }
}


class ShopStoreIcon extends StatelessWidget {
  const ShopStoreIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(
        Icons.shop,
        color:Colors.teal[500],
      ),
    );
  }
}


class ShopStoreName extends StatelessWidget {
  const ShopStoreName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color:Colors.teal[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Text('MOMO',
        style: 
        TextStyle(
          color: Colors.teal[50],
        ),
      )
    );
  }
}

