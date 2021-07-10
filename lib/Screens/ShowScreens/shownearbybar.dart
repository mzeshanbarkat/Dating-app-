import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/nearbybarlist.dart';
import 'package:onxyconnect/Widget/nearbybar.dart';

class ShowNearbyBar extends StatefulWidget {
  @override
  _ShowNearbyBarState createState() => _ShowNearbyBarState();
}

class _ShowNearbyBarState extends State<ShowNearbyBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView.builder(
          itemCount: NearbybarList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildnearbybar(context,index)
      ),

    );
  }
}
