import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/widgets/named_icon.dart';
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

          NamedIcon(
            iconData: Icons.shopping_cart_outlined,
            notificationCount: 1,
            onTap: () {},
          ),

          NamedIcon(
            iconData: Icons.format_align_right_rounded,
            notificationCount: 0,
            onTap: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _headerSection(),

          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)
                  ),
                ),
              ),

              _purpleBody(),

              Container(
                margin: EdgeInsets.only(top: 150),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)
                  ),
                ),
              ),

              Positioned(
                top: 160,
                left: 40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/check-list-icon-clipart.png',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Orders history',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/credit_card.png',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Payment method',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/globe-location-tracking-world.png',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Tracking',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/statics_icon.png',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Statics',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/herramientas.jpg',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          elevation: 5,
                          shadowColor: Color.fromRGBO(107, 107, 107, .6),
                          margin: EdgeInsets.only(top: 10, bottom: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 160,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/tree-green-lifebuoy-image.jpg',
                                  height: 65,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _headerSection(){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/img/robert-downey-jr-dc.jpg'),
      ),
      title: Text(
        'Robert Williamson',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _purpleBody(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: Color.fromRGBO(130, 135, 211, 0.5),
            elevation: 5,
            shadowColor: Color.fromRGBO(107, 107, 107, .2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 90,
              width: 95,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '10%',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),

          Stack(
            children: <Widget>[
              Card(
                color: Color.fromRGBO(130, 135, 211, 0.5),
                elevation: 5,
                shadowColor: Color.fromRGBO(107, 107, 107, .2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 90,
                  width: 95,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '32%',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        'Bonuses',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  child: Text('1', style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              )
            ]
          ),

          Card(
            color: Color.fromRGBO(130, 135, 211, 0.5),
            elevation: 5,
            shadowColor: Color.fromRGBO(107, 107, 107, .2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 90,
              width: 95,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '70%',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'Deposit',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}