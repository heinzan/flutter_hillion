import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData iconData;
  final Function onPressed;

  const SocialIcon({Key key, this.colors, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient:
                    LinearGradient(colors: colors, tileMode: TileMode.clamp)),
            child: RawMaterialButton(
              shape: CircleBorder(),
              onPressed: onPressed,
              child: Icon(iconData, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
