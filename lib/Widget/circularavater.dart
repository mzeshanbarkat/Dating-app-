import 'package:flutter/material.dart';

class CircleAvaterr extends StatelessWidget {
  final img;
  CircleAvaterr({@required this.img});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(img),
      radius: 20,

    );
  }
}
