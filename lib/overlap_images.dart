import 'package:flutter/material.dart';

import 'user.dart';

class OverlapImges extends StatelessWidget {
  final List<User> users;

  OverlapImges({this.users});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: getImages(),
    );
  }

  List<Widget> getImages() {
    List<Widget> w = [];
    double left = 0;

    for (int i = 0; i < users.length; i++) {
      w.add(
        Positioned(
          left: left,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.grey.shade300),
              image: DecorationImage(
                image: users[i].image == null
                    ? AssetImage('images/default.jpg')
                    : AssetImage(users[i].image),
              ),
            ),
          ),
        ),
      );
      left = left + 30;
    }
    return w;
  }
}
