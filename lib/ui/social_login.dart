import 'package:flutter/material.dart';
import 'social_icon.dart';
import 'package:flutter_app_layout/custom_icons.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                horizontalLine(),
                Text(
                  'Social Login',
                  style:
                      TextStyle(fontSize: 16.0, fontFamily: "Poppins-Medium"),
                ),
                horizontalLine(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  colors: [
                    Color(0xFF102397),
                    Color(0xFF187adf),
                    Color(0xFF00eaf8),
                  ],
                  iconData: CustomIcons.facebook,
                  onPressed: () {},
                ),
                SocialIcon(
                  colors: [
                    Color(0xFFff4f38),
                    Color(0xFFff355d),
                  ],
                  iconData: CustomIcons.googlePlus,
                  onPressed: () {},
                ),
                SocialIcon(
                  colors: [
                    Color(0xFF17ead9),
                    Color(0xFF6078ea),
                  ],
                  iconData: CustomIcons.twitter,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget horizontalLine() {
    return Padding(
      padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 8.0, right: 8.0),
      child: Container(
        width: 100,
        height: 1,
        color: Colors.black.withOpacity(.2),
      ),
    );
  }
}
