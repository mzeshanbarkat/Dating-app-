import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/nearbylivelist.dart';
import 'package:onxyconnect/Widget/nearbylive.dart';


class ShowNearbyLive extends StatefulWidget {
  static String id = 'shownearbylive';

  @override
  _ShowNearbyLiveState createState() => _ShowNearbyLiveState();
}

class _ShowNearbyLiveState extends State<ShowNearbyLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: NearbyliveList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildnearbylive(context,index)
      ),

    );
  }
}
