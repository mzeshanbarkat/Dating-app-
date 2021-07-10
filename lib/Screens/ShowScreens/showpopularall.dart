import 'package:flutter/material.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Utils/popularalllist.dart';
import 'package:onxyconnect/Widget/popularall.dart';


class ShowPopularAll extends StatefulWidget {
  @override
  _ShowPopularAllState createState() => _ShowPopularAllState();
}

class _ShowPopularAllState extends State<ShowPopularAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: PopularallList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildpopularall(context,index)
      ),

    );

  }
}
