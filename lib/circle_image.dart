import 'package:flutter/material.dart';
import 'user.dart';

class CircleImage extends StatelessWidget {
  final User user;

  CircleImage({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Text(user.name, style: TextStyle(fontSize: 13)),
          SizedBox(height: 4),
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(user.image),
          ),
          SizedBox(height: 4),
          Text(
            'Post',
          //  user.post,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
