import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/pages/tab1_page.dart';
import 'package:flutter_app_4/src/pages/tab2_page.dart';
import 'package:flutter_app_4/src/providers/bottom_navigator_bar.dart';
import 'package:flutter_app_4/src/utils/icons.dart';
import 'package:provider/provider.dart';

List<Map<String, dynamic>> _tabOptions = [
  {
    'widget': Tab1Page(),
    'icon': 'home',
    'name': 'Option 1'
  },
  {
    'widget': Tab2Page(),
    'icon': 'settings',
    'name': 'Option 2'
  }
];

BottomNavigationBar getBottomNavigator(BuildContext context){
  final _bottomNavProvider = Provider.of<BottomNavigationBarProvider>(context);

  return BottomNavigationBar(
    items: _tabOptions.map((option) => BottomNavigationBarItem(
      icon: getIcon(iconName: option['icon']),
      label: option['name']
    )).toList(),
    currentIndex: _bottomNavProvider.currentIndex,
    selectedItemColor: Colors.amber[800],
    onTap: (int index){
      _bottomNavProvider.currentIndex = index;
    },
  );
}

Widget getBodyFromBottomNavigator(int tabIndex){
  return _tabOptions[tabIndex]['widget'];
}