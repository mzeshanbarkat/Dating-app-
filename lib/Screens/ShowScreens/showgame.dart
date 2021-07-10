import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/gameslist.dart';
import 'package:onxyconnect/Widget/gameswidet.dart';

class ShowGame extends StatefulWidget {
  static String id = 'showgame';
  @override
  _ShowGameState createState() => _ShowGameState();
}

class _ShowGameState extends State<ShowGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: GamesList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildgame(context,index)
      ),

    );
  }
}
