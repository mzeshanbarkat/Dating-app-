import 'package:flutter/material.dart';


const kPrimarycolor=Color(0xffeccc09);
const kSecondarycolor=Color(0xff1977f3);
const kTertiarycolor=Color(0xff212121);


class Textt1{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: FontWeight.normal
    );
  }
}


class Textt2{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.bold
    );
  }
}
