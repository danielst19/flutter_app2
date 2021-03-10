import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/pages/bottom_navigator_page.dart';
import 'package:flutter_app_4/src/pages/favorites_page.dart';
import 'package:flutter_app_4/src/pages/home_page.dart';
import 'package:flutter_app_4/src/pages/login_page.dart';
import 'package:flutter_app_4/src/pages/promotions_page.dart';
import 'package:flutter_app_4/src/pages/sections_page.dart';
/* import 'package:flutter_app_4/src/providers/bottom_navigator_bar.dart';
import 'package:flutter_app_4/src/providers/provider.dart';
import 'package:provider/provider.dart'; */
import 'package:flutter_app_4/src/providers/login_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* return MultiProvider(
      providers: [
        ChangeNotifierProvider<Favorites>(
          create: (_) => Favorites(),
        ),
        ChangeNotifierProvider<BottomNavigationBarProvider>(
          create: (_) => BottomNavigationBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'login',
        routes: {
          '/': (BuildContext context) => HomePage(),
          'favorites': (BuildContext context) => FavoritesPage(),
          'bottom-navigator': (BuildContext context) => BottomNavigatorPage(),
          'login': (BuildContext context) => LoginPage(),
        },
      )
    ); */

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.green
        ),
        initialRoute: 'login',
        routes: {
          '/': (BuildContext context) => HomePage(),
          'favorites': (BuildContext context) => FavoritesPage(),
          'bottom-navigator': (BuildContext context) => BottomNavigatorPage(),
          'login': (BuildContext context) => LoginPage(),
          'promotions': (BuildContext context) => PromotionsPage(),
          'sections': (BuildContext context) => SectionsPage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
