import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';



class VerifyTextFieldd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: '0',
        hintStyle: Textt2.textStyle(kTertiarycolor, 20),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
    );
  }
}
