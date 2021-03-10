import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/widgets/circle.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(47, 89, 210, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ]
            ),
            child: Stack(
              children: <Widget>[
                Circle(center: {"x": 15, "y": 50}, radius: 40),
                Circle(center: {"x": 135, "y": 75}, radius: 50),
                Circle(center: {"x": 330, "y": 20}, radius: 100),

                Positioned(
                  top: 55,
                  left: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        height: 43,
                        shape: CircleBorder(),
                        color: Color.fromRGBO(141, 148, 195, .6),
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Offers & Promotions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Color.fromRGBO(107, 107, 107, .2),
                  margin: EdgeInsets.only(top: 20, bottom: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: 105,
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: ListTile(
                        onTap: () {},
                        leading: Container(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(237, 237, 244, .6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/img/regalo.png'),
                        ),
                        title: Text(
                          'Refer Friends',
                          style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 21
                          ),
                        ),
                        subtitle: Text(
                          'Earn money from every friend',
                          style: TextStyle(fontSize: 15.5, color: Colors.grey),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                  ),
                ),

                _discountSection(),

                Text(
                  'Upgrades',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                    height: 230,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/img/background_card_image.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Insifr Business You",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Travel Without the fees",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        FlatButton(
                          height: 50,
                          colorBrightness: Brightness.dark,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'Get Insifr Business You',
                            style:
                                TextStyle(fontSize: 18, color: Colors.orange),
                          ),
                          onPressed: () {
                            print("flat button tapped");
                          }
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _discountSection() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Discounts',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
              child: Text("View all",
                style: TextStyle(color: Colors.blue, fontSize: 18)
              ),
              onTap: () {
                print('Ver todo');
              }
            ),
        ],
      ),
      SizedBox(
        height: 250.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          itemBuilder: (BuildContext context, int index) {
            if (index % 2 == 0) {
              return _buildCarouselItem(context, index ~/ 2);
            }

            return SizedBox(
              width: 20,
            );
          },
        ),
      ),
    ]);
  }

  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Card(
      elevation: 5,
      shadowColor: Color.fromRGBO(107, 107, 107, .2),
      margin: EdgeInsets.only(top: 10, bottom: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/blinkist.png',
              height: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Blinkist',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'See Partner Deal',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }

}
