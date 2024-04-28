
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/pages/accounting/accounting.dart';
import 'package:pickrewardapp/pages/accounting/screen/record.edit.dart';


import 'package:pickrewardapp/pages/card/card.dart';
import 'package:pickrewardapp/pages/channelsearch/channelsearch.dart';
import 'package:pickrewardapp/shared/config/palette.dart'; 


void main() async {

   await dotenv.load(fileName: ".env.dev"); 
  // await dotenv.load(fileName: ".env.test");
  // await dotenv.load(fileName: ".env.prod");

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());

  FlutterNativeSplash.remove();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        scaffoldBackgroundColor: Palette.kToBlack[10],
        primaryColor: Palette.kToBlack,
        dialogBackgroundColor: Palette.kToBlack[10],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Palette.kToBlack[10]!,
          primary: Palette.kToBlack,
          // secondary: Palette.kToBlack,
          // surface:Palette.kToBlack[10],
          surfaceTint: Palette.kToBlack[10],
          // brightness:Brightness.light, 
        )
      ),
      // darkTheme: ThemeData.dark().copyWith(platform: TargetPlatform.iOS),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialWithModalsPageRoute(
                builder: (_) =>  const MyHomePage(),
                settings: settings);
          case '/record/edit':
            return MaterialWithModalsPageRoute(
                builder: (_) =>  const RecordEditScreen(),
                settings: settings);
          
          
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  // static const Widget homePage = HomePage(key: PageStorageKey<String>('Screen-A'));
  static const Widget channelSearchPage = ChannelSearchPage();
  static const Widget cardSearchPage = CardSearchPage();
  static Widget accountingPage = const AccountingPage();

  static final List<Widget> _widgetOptions = <Widget>[
    channelSearchPage,
    cardSearchPage,
    accountingPage,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_sharp),
              label: '挑選信用卡',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: '信用卡總覽',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '我的',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Palette.kToYellow[400],
          onTap: _onItemTapped,
        ),
    );
  }
}

