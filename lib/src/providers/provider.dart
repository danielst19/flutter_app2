import 'package:flutter/material.dart';

class Favorites extends ChangeNotifier {
  final List<int> _favoritesItem = [];

  List<int> get items => _favoritesItem;

  void addItem(int item){
    _favoritesItem.add(item);
    notifyListeners();
  }

  void removeItem(int item){
    _favoritesItem.remove(item);
    notifyListeners();
  }
}