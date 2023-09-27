import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/card.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pickrewardapp/channel_search/channel_search.dart';
import 'package:pickrewardapp/home/home.dart';
import 'package:pickrewardapp/shared/config/global_padding.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

void main() {
  runApp(const PickRewardApp());
}


class PickRewardApp extends StatelessWidget {
  const PickRewardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Palette.kToBlue
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        // Locale('en'), // English
        Locale('zh')
      ],
      home:HomeScreen(),
      // initialRoute:'/',
      // routes:{
      //   '/':(context)=>  const CardScreen(),
      // },
    );
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 1;

  static const Widget homePage = HomePage();
  static const Widget channelSearchPage = ChannelSearchPage();
  static const Widget cardSearchPage = CardSearchPage();

  // static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    homePage,
    channelSearchPage,
    cardSearchPage,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Container(
        // alignment: Alignment.topCenter,
        padding: GlobalPadding.global(),
        child: Container(
          // height:MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top:10),
          child:IndexedStack(
            children:_widgetOptions,
            index:_selectedIndex,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '最近更新',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: '通路搜尋',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '信用卡',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Palette.kToBlue[600],
        onTap: _onItemTapped,
      ),
    );
  }
}

