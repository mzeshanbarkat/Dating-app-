import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/gamelivelist.dart';
import 'package:onxyconnect/Widget/gamelive.dart';

class ShowGameLive extends StatefulWidget {
  @override
  _ShowGameLiveState createState() => _ShowGameLiveState();
}

class _ShowGameLiveState extends State<ShowGameLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: GameLiveList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildgamelive(context,index),
      ),

    );

  }
}
