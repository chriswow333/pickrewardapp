



import 'package:flutter/material.dart';

class PayName extends StatelessWidget {
  const PayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('行動支付',
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}


class PayStores extends StatelessWidget {
  const PayStores({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          PayStore(),
          PayStore(),
          PayStore(),
          PayStore(),
          PayStore(), 
          PayStore(), 
          PayStore(),
        ]
      ),
    );
  }
}

class PayStore extends StatelessWidget {
  const PayStore({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
    
      onPressed: (){},
      child:Column(
        children:[
          PayStoreIcon(),
          PayStoreName(),
        ],
      ),
    );
  }
}



class PayStoreIcon extends StatelessWidget {
  const PayStoreIcon({super.key});

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

class PayStoreName extends StatelessWidget {
  const PayStoreName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color:Colors.teal[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Text('LINEPAY',
        style: 
        TextStyle(
          color: Colors.teal[50],
        ),
      )
    );
  }
}

