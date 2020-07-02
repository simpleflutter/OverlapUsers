import 'package:flutter/material.dart';
import 'package:ui_demo/active_user.dart';
import 'package:ui_demo/circle_image.dart';
import 'package:ui_demo/my_appbar.dart';
import 'package:ui_demo/overlap_images.dart';
import 'circle_border.dart';
import 'user.dart';

class HomePage extends StatelessWidget {
  final List<User> users = getUsersformServer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(8),
        child: OverlapImges(
          users: users,
        ),
      ),
    );
  }
}
