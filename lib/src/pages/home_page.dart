import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/providers/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Items'),
        actions: [
          RaisedButton.icon(
            icon: Icon(Icons.favorite_border_outlined),
            label: Text('Favoritos'),
            onPressed: () async { 
              await Navigator.pushNamed(context, 'favorites');
              setState(() {});
            }
          ),
        ],
      ),
      body: _itemList(context),
    );
  }

  Widget _itemList(BuildContext context) {
    final favorites = Provider.of<Favorites>(context/* , listen: false */);

    return ListView.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index){
        final bool _exist = favorites.items.contains(index);

        return ListTile(
          title: Text('Item $index'),
          trailing: IconButton(
            icon: _exist
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
            onPressed: (){

              if(_exist){
                favorites.removeItem(index);
              }else {
                favorites.addItem(index);
              }
              
              //setState(() {});
            },
          ),
        );
      }
    );
  }
}