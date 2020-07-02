import 'package:flutter/material.dart';

import 'user.dart';

class ActiveUser extends StatelessWidget {
  final User user;

  ActiveUser({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: user.image == null
                    ? AssetImage('images/default.jpg')
                    : AssetImage(user.image),
              ),
              Positioned(
                top: 40,
                left: 40,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: user.isActive ? Colors.green : Colors.grey.shade400,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 4),
          Text(user.name),
        ],
      ),
    );
  }
}
