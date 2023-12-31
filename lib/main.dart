import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';




import 'package:pickrewardapp/card/card.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pickrewardapp/channel_search/channel_search.dart';
import 'package:pickrewardapp/firebase_options.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/user.dart';


void main()async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

   await dotenv.load(fileName: ".env.dev"); 
  // await dotenv.load(fileName: ".env.test");
  // await dotenv.load(fileName: ".env.prod");

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FlutterNativeSplash.remove();


  runApp(const PickRewardApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white, 
    statusBarBrightness:
        Brightness.light 
    ));

  // FlutterNativeSplash.remove();

}

class PickRewardApp extends StatelessWidget {
  const PickRewardApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        useMaterial3: false,
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor:Palette.kToBlack,
        //   background: Colors.white,
        //   surface: Colors.white,
        // ),
        primarySwatch:Palette.kToBlack,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh')
      ],
      home:const HomeScreen(),
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
  static Widget userPage = UserPage();

  static final List<Widget> _widgetOptions = <Widget>[
    channelSearchPage,
    cardSearchPage,
    userPage,
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
        child: Center(
          child:LayoutBuilder(
            builder:((context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
              if (screenWidth > tabletWidthThreshold) {
                return SizedBox(
                  width: tabletWidthThreshold,
                  child: IndexedStack(
                    index: _selectedIndex,
                    children: _widgetOptions,
                  ),
                );
              } else {
                // 屏幕较小，不限制应用宽度
                return IndexedStack(
                  index: _selectedIndex,
                  children: _widgetOptions,
                );
              }
            }),
          ),
        ),
      ),
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
