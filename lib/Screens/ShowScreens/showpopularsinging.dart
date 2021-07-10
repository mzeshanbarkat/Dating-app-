import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/popularsinging.dart';
import 'package:onxyconnect/Widget/popularsinging.dart';


class ShowPopularSinging extends StatefulWidget {
  @override
  _ShowPopularSingingState createState() => _ShowPopularSingingState();
}

class _ShowPopularSingingState extends State<ShowPopularSinging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: PopularSingingList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildpopularsinging(context,index)
      ),

    );
  }
}
