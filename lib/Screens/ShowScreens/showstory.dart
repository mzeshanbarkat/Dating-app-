import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/favouritestorylist.dart';
import 'package:onxyconnect/Widget/favouritestory.dart';

class ShowStory extends StatefulWidget {
  const ShowStory({Key key}) : super(key: key);

  @override
  _ShowStoryState createState() => _ShowStoryState();
}

class _ShowStoryState extends State<ShowStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FavouriteStoryList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildfavouritestory(context,index)
      ),

    );
  }
}
