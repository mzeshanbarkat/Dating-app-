import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/populardancinglist.dart';
import 'package:onxyconnect/Widget/populardancing.dart';

class ShowPopularDancing extends StatefulWidget {
  @override
  _ShowPopularDancingState createState() => _ShowPopularDancingState();
}

class _ShowPopularDancingState extends State<ShowPopularDancing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: PopularDancingList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildpopulardancing(context,index)
      ),

    );
  }
}
