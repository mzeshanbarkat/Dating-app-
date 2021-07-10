import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/gamehotlivelist.dart';
import 'package:onxyconnect/Widget/gamehotlive.dart';

class ShowHotLive extends StatefulWidget {
  @override
  _ShowHotLiveState createState() => _ShowHotLiveState();
}

class _ShowHotLiveState extends State<ShowHotLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView.builder(
        itemCount: GameHotLiveList.list.length,
        itemBuilder: (BuildContext context, int index )
        => buildgamehotlive(context,index),
      ),
    );
  }
}
