import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';


class TextFieldd extends StatelessWidget {
  final iconn;
  final String hinttextt;
  bool obscre;
  TextFieldd({@required this.iconn,this.hinttextt,this.obscre,});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscre,
      decoration: InputDecoration(
          hintText: hinttextt,
          prefixIcon: iconn,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: kPrimarycolor)

          )

      ),
    );
  }
}
