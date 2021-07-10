import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/favouritestorylist.dart';
import 'package:onxyconnect/Widget/favouritestory.dart';
import 'package:onxyconnect/Screens/ShowScreens/showstory.dart';
import 'package:onxyconnect/Screens/ShowScreens/showfavfollowlive.dart';
import 'package:onxyconnect/Screens/Favourite/favouritebar.dart';
class FavouriteFollow extends StatefulWidget {
  static String id = 'favouritefollow';
  const FavouriteFollow({Key key}) : super(key: key);

  @override
  _FavouriteFollowState createState() => _FavouriteFollowState();
}

class _FavouriteFollowState extends State<FavouriteFollow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Follow',style: Textt2.textStyle(kPrimarycolor, 20.0),),
                      SizedBox(width: 10.0,),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => FavouriteBar()),
                                  (Route<dynamic> route) => true,
                            );

                          },
                          child: Text('Bar',style: Textt2.textStyle(kTertiarycolor, 20.0),)),

                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),

                      IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),

                      Container(
                        height: 30,
                        width: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: kPrimarycolor
                        ),
                        child: IconButton(icon: Icon(FontAwesomeIcons.pen,size: 15.0,color: Colors.white,), onPressed: (){}),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            Expanded(child: ShowStory(),),

            Expanded(
              flex: 4,
              child: ShowFavFollowLive(),)
          ],
        ),
      ),
    );
  }
}

