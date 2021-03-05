import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(223, 231, 242, 1)
      )
    );  */

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(223, 231, 242, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(223, 231, 242, 1),
        elevation: 0,
        leading: GestureDetector(
          onTap: () { },
          child: Icon(Icons.arrow_back_ios_rounded,),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.shopping_cart_outlined, size: 26.0,),
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                  Icons.format_align_right_rounded
              ),
            )
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text('Robert Williamson'),
          ),

          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  ),
                ),
              ),

              Center(child: Text("Content")),

              Card(
                color: Color.fromRGBO(130, 135, 211, 0.5),
                elevation: 5,
                shadowColor: Color.fromRGBO(107, 107, 107, .2),
                margin: EdgeInsets.only(top: 10, bottom: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 120,
                  width: 120,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '10%',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        'Discount',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 150),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}