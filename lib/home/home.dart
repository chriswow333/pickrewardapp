import 'package:flutter/material.dart';
import 'package:pickrewardapp/home/component/latest_card.items.dart';
import 'package:pickrewardapp/home/component/searchbar.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<CardItemViewModel>(create:(_)=>CardItemViewModel()),
      ],
      child:HomeComponent(),
    );
  }
}

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          SearchCardBar(),
          SizedBox(height:20),
          LatestTitle(),
          Expanded(
            child:LatestCardItems(),
          )
        ]
      ),
    );
  }
}