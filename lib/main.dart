
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:path_provider/path_provider.dart';


import 'package:pickrewardapp/card/card.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pickrewardapp/channel_search/channel_search.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/model/user_record.dart';
import 'package:pickrewardapp/user/user.dart';
import 'package:pickrewardapp/user_info/model/user_card.dart';


void main() async {


  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FlutterError.onError = (errorDetails) {
  //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  // };
  // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };

   await dotenv.load(fileName: ".env.dev"); 
  // await dotenv.load(fileName: ".env.test");
  // await dotenv.load(fileName: ".env.prod");

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  // initialHive();
  runApp(MyApp());


  // FlutterNativeSplash.remove();
}

initialHive() async {


  // hive initialization
  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);
  Hive.registerAdapter(UserRecordAdapter());
  Hive.registerAdapter(UserCardModelAdapter());


  // // Get the chosen sub-directory for Hive files 
  // Delete the Hive directory and all its files
  // var hiveDb = Directory(document.path);
  // hiveDb.delete(recursive: true);
}

class MyApp extends StatelessWidget {

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
          secondary: Palette.kToBlack,
          // brightness:Brightness.light, 
        )
      ),
      // darkTheme: ThemeData.dark().copyWith(platform: TargetPlatform.iOS),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialWithModalsPageRoute(
                builder: (_) => ChannelSearchPage(),
                settings: settings);
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Material(
      child:Scaffold(
        body: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            // transitionBetweenRoutes: false,
            // middle: Text('iOS13 Modal Presentation'),
            // trailing: GestureDetector(
            //   child: Icon(Icons.arrow_forward),
            //   onTap: () => Navigator.of(context).pushNamed('ss'),
            // ),
            // middle:Text('hello'),
            automaticallyImplyLeading:false,
            backgroundColor: Colors.white,
          ),
          child:SizedBox.expand(
            child:SafeArea(
                child:Container(
                  child:LayoutBuilder(
                    builder:((context, constraints) {
                      return TextButton(
                        onPressed:(){
                          
                          showCupertinoModalBottomSheet(
                              // overlayStyle:SystemUiOverlayStyle(
                              //   statusBarColor: Colors.white, 
                              //   statusBarBrightness: Brightness.dark,
                              // ),
                              expand: true,
                              context: context,
                              // backgroundColor: Colors.transparent,
                              // barrierColor:Colors.black,
                              builder: (context) => Container(),
                          );
                          
                          // CupertinoScaffold.showCupertinoModalBottomSheet(
                          //   context: context,
                          //   expand: true,
                          //   // shape: const RoundedRectangleBorder(
                          //   //     borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                          //   //   ),
                          //   builder: (context) {
                          //     // return CupertinoScaffold(
                          //     //   overlayStyle:SystemUiOverlayStyle(
                          //     //     statusBarColor: Colors.white, 
                          //     //     statusBarBrightness: Brightness.light,
                          //     //   ),
                          //       return Container(
                          //         child:Placeholder(),                      
                          //       );
                          //   },
                          // );
                        },
                        child:Text('   hello')
                      );
                    }
                  )
                ),
              ) 
            ),
          ),
        ),
      )
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
  static Widget userPage = const UserPage();

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
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border:null,
            // middle: Text('iOS13 Modal Presentation'),
            // trailing: GestureDetector(
            //   child: Icon(Icons.arrow_forward),
            //   onTap: () => Navigator.of(context).pushNamed('ss'),
            // ),
            // middle:Text('hello'),
          ),
        // transitionBackgroundColor: Colors.white,
        // backgroundColor:Palette.kToBlack[20],
        child: SafeArea(
          child:Center(
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








class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            transitionBetweenRoutes: false,
            middle: Text('iOS13 Modal Presentation'),
            trailing: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).pushNamed('ss'),
            ),
          ),
          child: SizedBox.expand(
            child: SingleChildScrollView(
              primary: true,
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                        title: Text('Cupertino Photo Share Example'),
                        onTap: () => Navigator.of(context).push(
                            MaterialWithModalsPageRoute(
                                builder: (context) => Container()))),
                    section('STYLES'),
                    ListTile(
                      title: Text('Material fit'),
                      onTap: () => showMaterialModalBottomSheet(
                        expand: false,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                      title: Text('Bar Modal'),
                      onTap: () => showBarModalBottomSheet(
                        expand: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    // ListTile(
                    //   title: Text('Avatar Modal'),
                    //   onTap: () => CupertinoScaffold.showAvatarModalBottomSheet(
                    //     expand: true,
                    //     context: context,
                    //     backgroundColor: Colors.transparent,
                    //     builder: (context) => Container(),
                    //   ),
                    // ),
                    // ListTile(
                    //   title: Text('Float Modal'),
                    //   onTap: () => showFloatingModalBottomSheet(
                    //     context: context,
                    //     builder: (context) => Container(),
                    //   ),
                    // ),
                    ListTile(
                      title: Text('Cupertino Modal fit'),
                      onTap: () => showCupertinoModalBottomSheet(
                        expand: false,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    section('COMPLEX CASES'),
                    ListTile(
                        title: Text('Cupertino Small Modal forced to expand'),
                        onTap: () => showCupertinoModalBottomSheet(
                              expand: true,
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => Container(),
                            )),
                    ListTile(
                      title: Text('Reverse list'),
                      onTap: () => showBarModalBottomSheet(
                        expand: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                      title: Text('Cupertino Modal inside modal'),
                      onTap: () => showCupertinoModalBottomSheet(
                        expand: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                        title: Text('Cupertino Modal with inside navigation'),
                        onTap: () => showCupertinoModalBottomSheet(
                              expand: true,
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => Container(),
                            )),
                    ListTile(
                      title:
                          Text('Cupertino Navigator + Scroll + WillPopScope'),
                      onTap: () => showCupertinoModalBottomSheet(
                        expand: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                      title: Text('Modal with WillPopScope'),
                      onTap: () => showCupertinoModalBottomSheet(
                        expand: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                      title: Text('Modal with Nested Scroll'),
                      onTap: () => showCupertinoModalBottomSheet(
                        expand: true,
                        context: context,
                        builder: (context) => Container(),
                      ),
                    ),
                    ListTile(
                      title: Text('Modal with PageView'),
                      onTap: () => showBarModalBottomSheet(
                        expand: true,
                        context: context,
                        builder: (context) => Container(),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget section(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}



// void main()async {


// //
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   // FlutterError.onError = (errorDetails) {
//   //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
//   // };
//   // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
//   // PlatformDispatcher.instance.onError = (error, stack) {
//   //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//   //   return true;
//   // };

//    await dotenv.load(fileName: ".env.dev"); 
//   // await dotenv.load(fileName: ".env.test");
//   // await dotenv.load(fileName: ".env.prod");

//   // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


//   // hive initialization
//   final document = await getApplicationDocumentsDirectory();
//   await Hive.initFlutter(document.path);
//   Hive.registerAdapter(UserRecordAdapter());
//   Hive.registerAdapter(UserCardModelAdapter());



//   // // Get the chosen sub-directory for Hive files 
//   // // Delete the Hive directory and all its files
//   var hiveDb = Directory(document.path);
//   hiveDb.delete(recursive: true);

//   await Hive.openBox('pickrewardapp');

//   runApp(const PickRewardApp());


//   // FlutterNativeSplash.remove();

// }

// class PickRewardApp extends StatelessWidget {
//   const PickRewardApp({super.key});


//   @override
//   Widget build(BuildContext context) {


//     return MaterialApp(
//       debugShowCheckedModeBanner:false,
//       theme: ThemeData(platform: TargetPlatform.iOS),
//       darkTheme: ThemeData.dark().copyWith(platform: TargetPlatform.iOS),
//       // theme: ThemeData(
//       //   useMaterial3: false,
//       //   colorScheme: ColorScheme.fromSeed(
//       //     seedColor: Colors.black,
//       //     // ···
//       //     brightness: Brightness.dark,
//       //   ),

//       //     // Define the default `TextTheme`. Use this to specify the default
//       //     // text styling for headlines, titles, bodies of text, and more.
//       //     textTheme: TextTheme(
//       //       displayLarge: const TextStyle(
//       //         fontSize: 72,
//       //         fontWeight: FontWeight.bold,
//       //       ),
//       //       // ···
//       //       // titleLarge: GoogleFonts.oswald(
//       //       //   fontSize: 30,
//       //       //   fontStyle: FontStyle.italic,
//       //       // ),
//       //       // bodyMedium: GoogleFonts.merriweather(),
//       //       // displaySmall: GoogleFonts.pacifico(),
//       //     ),
//       //   ),
      
//       // ThemeData(
//       //   useMaterial3: true,
//       //   // colorScheme: ColorScheme.fromSeed(
//       //   //   seedColor:Palette.kToBlack,
//       //   //   background: Colors.white,
//       //   //   surface: Colors.white,
//       //   // ),
//       //   brightness:Brightness.light,
//       //   primaryColor:Colors.white,
//       //   scaffoldBackgroundColor:Colors.white,
//       //   // primarySwatch:Palette.kToBlack,
//       // ),
//       localizationsDelegates: const [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('zh')
//       ],
//       home:const Home2(),
//     );
//   }
// }
