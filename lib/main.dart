import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/card.dart';
import 'package:pickrewardapp/cardcontent/card.content.dart';

void main() {
  runApp(const PickRewardApp());
}


class PickRewardApp extends StatelessWidget {
  const PickRewardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute:'/card',
      routes:{
        '/': (context)=> const HomePage(),
        '/card':(context)=>  const CardScreen(),
      },
    );
  }
}


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:50),
        child: CardPage(),
      ),
    );
  }
}






class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top:20),
          child: SizedBox(
            width:800,
            child:Container(
              child:const Text('okokok')
            ),
          ),
        ),
      ),
    );
  }
}

