import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/favbarpopularlist.dart';
import 'package:onxyconnect/Widget/favbarpopular.dart';
import 'package:onxyconnect/Widget/favbarpopular.dart';
class ShowFavBarPopular extends StatefulWidget {
  const ShowFavBarPopular({Key key}) : super(key: key);

  @override
  _ShowFavBarPopularState createState() => _ShowFavBarPopularState();
}

class _ShowFavBarPopularState extends State<ShowFavBarPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:ListView.builder(
          itemCount: FavBarPopularList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildfavbarpopular(context,index)
      ),
    );

  }
}
