import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/providers/bottom_navigator_bar.dart';
import 'package:flutter_app_4/src/widgets/bottom_navigator.dart';
import 'package:provider/provider.dart';

class BottomNavigatorPage extends StatefulWidget {
  BottomNavigatorPage({Key key}) : super(key: key);

  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {

  @override
  Widget build(BuildContext context) {
    final _bottomNavProvider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: getBodyFromBottomNavigator(_bottomNavProvider.currentIndex),
      bottomNavigationBar: getBottomNavigator(context),
    );
  }
}