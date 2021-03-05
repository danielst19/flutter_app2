import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/providers/provider.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favoritos')),
      body: _favoritesList(context),
    );
  }

  Widget _favoritesList(BuildContext context) {
    final favorites = Provider.of<Favorites>(context, listen: false);
    
    return ListView.builder(
      itemCount: favorites.items.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text('Item ${favorites.items[index]}'),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              favorites.removeItem(favorites.items[index]);
              setState(() {});
            },
          ),
        );
      }
    );
  }
}