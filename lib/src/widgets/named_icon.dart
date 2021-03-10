import 'package:flutter/material.dart';

class NamedIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final int notificationCount;

  const NamedIcon({
    Key key,
    this.onTap,
    @required this.iconData,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        padding: EdgeInsets.all(6),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: notificationCount == 0 ? null : Border.all(color: Colors.teal[400], width: 1.8),
            borderRadius: BorderRadius.circular(55)
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(iconData, color: Colors.black,),
              notificationCount == 0 ? Container() :
              Positioned(
                top: 0,
                right: -10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.teal[400], width: 1.8),
                    color: Colors.white,
                    //borderRadius: BorderRadius.circular(55)
                  ),
                  alignment: Alignment.center,
                  child: Text('$notificationCount', style: TextStyle(color: Colors.black),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}