import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/favfollowlivelist.dart';
import 'package:onxyconnect/Widget/favouritestory.dart';
import 'package:onxyconnect/Widget/favfollowlive.dart';

class ShowFavFollowLive extends StatefulWidget {
  static String id ='showfavfollowlive';
  const ShowFavFollowLive({Key key}) : super(key: key);

  @override
  _ShowFavFollowLiveState createState() => _ShowFavFollowLiveState();
}

class _ShowFavFollowLiveState extends State<ShowFavFollowLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:ListView.builder(
          itemCount: FavFollowLiveList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildfavfollowlive(context,index)
      ),
    );
  }
}
