import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'FORGOT PASSWORD?',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 10.0),
            child: Text(
              'REGISTER NOW TO ENJOY MORE PRIVILLEGES',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              'CONTIUNE AS GUEST',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );;
  }
}