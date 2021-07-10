import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/nearbyalllist.dart';
import 'package:onxyconnect/Widget/nearbyall.dart';

class ShowNearbyAll extends StatefulWidget {
  static String id = 'shownearbyall';

  @override
  _ShowNearbyAllState createState() => _ShowNearbyAllState();
}

class _ShowNearbyAllState extends State<ShowNearbyAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: NearbyallList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildnearbyall(context,index)
      ),

    );
  }
}
