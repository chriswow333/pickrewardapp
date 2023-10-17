import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pickrewardapp/card/card.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pickrewardapp/channel_search/channel_search.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

void main()async {

   await dotenv.load(fileName: ".env.dev"); 
  // await dotenv.load(fileName: ".env.test");
  // await dotenv.load(fileName: ".env.prod");
  
  runApp(const PickRewardApp());
}

class PickRewardApp extends StatelessWidget {
  const PickRewardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Palette.kToBlue),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('zh')
      ],
      home: HomeScreen(),
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

  // static const Widget homePage = HomePage(key: PageStorageKey<String>('Screen-A'));
  static const Widget channelSearchPage = ChannelSearchPage();
  static const Widget cardSearchPage = CardSearchPage();

  static const List<Widget> _widgetOptions = <Widget>[
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
      body: SafeArea(
        // padding: GlobalPadding.global(),
        child: Center(
          child:LayoutBuilder(
            builder:((context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tabletWidthThreshold = GlobalSize.MAX_WIDTH;

              if (screenWidth > tabletWidthThreshold) {
                return Container(
                  width: tabletWidthThreshold,
                  child: IndexedStack(
                    children: _widgetOptions,
                    index: _selectedIndex,
                  ),
                );
              } else {
                // 屏幕较小，不限制应用宽度
                return IndexedStack(
                  children: _widgetOptions,
                  index: _selectedIndex,
                );
              }
            }),
          )
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: '通路搜尋',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '信用卡搜尋',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Palette.kToBlue[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
