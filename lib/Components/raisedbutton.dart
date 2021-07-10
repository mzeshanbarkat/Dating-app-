import 'package:flutter/material.dart';


class RaisedBtn extends StatelessWidget {

  final colorr;
  final String textt;
  final onchanged;
  final textStyle ;

  RaisedBtn({@required this.colorr,this.textt,this.onchanged,this.textStyle,});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      focusElevation: 10,
      highlightElevation: 10,
      hoverElevation: 10,
      color: colorr,
      elevation: 4,
      child:SizedBox(
        width: 330,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text(textt,style: textStyle,textAlign: TextAlign.center,),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: onchanged

    );
  }
}
