import 'package:flutter/material.dart';
import 'package:onxyconnect/Model/popularbeautymodel.dart';
import 'package:onxyconnect/Utils/popularbeautylist.dart';
import 'package:onxyconnect/Widget/nearbybar.dart';
import 'package:onxyconnect/Widget/popularbeauty.dart';

class ShowPopularBeauty extends StatefulWidget {
  @override
  _ShowPopularBeautyState createState() => _ShowPopularBeautyState();
}

class _ShowPopularBeautyState extends State<ShowPopularBeauty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: PopularBeautyList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildpopularbeauty(context,index)
      ),

    );
  }
}
