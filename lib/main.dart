import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/card.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pickrewardapp/channel_search/channel_search.dart';
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

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    
    ChannelSearchPage(),

    CardSearchPage(),
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
        child: Center(
          child:_widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首頁',
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

