import 'package:flutter/material.dart';
import 'package:ui_demo/user.dart';

class CircularBorder extends StatelessWidget {
  final User user;

  CircularBorder({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: user.image == null
                  ? AssetImage('images/default.jpg')
                  : AssetImage(user.image),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade400, width: 2),
            ),
          ),
          SizedBox(height: 4),
          Text(
            user.name,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
