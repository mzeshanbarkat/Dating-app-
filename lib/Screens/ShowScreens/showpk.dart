import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/pklist.dart';
import 'package:onxyconnect/Widget/pkk.dart';

class ShowPk extends StatefulWidget {
  static String id = 'showpk';

  @override
  _ShowPkState createState() => _ShowPkState();
}

class _ShowPkState extends State<ShowPk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: PkList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildpk(context,index)
      ),

    );
  }
}
