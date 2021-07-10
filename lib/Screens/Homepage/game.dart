import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Homepage/pk.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/ShowScreens/showgame.dart';
import 'package:onxyconnect/Screens/ShowScreens/showgamelive.dart';
import 'package:onxyconnect/Screens/ShowScreens/showhotlive.dart';
import 'package:onxyconnect/Utils/gameslist.dart';
import 'package:onxyconnect/Widget/gameswidet.dart';

import 'chat.dart';
import 'nearby.dart';

class Game extends StatefulWidget {
  static String id = "game";
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Nearby()),
                              (Route<dynamic> route) => true,
                        );
                      },
                      child: Text('Nearby',style: Textt2.textStyle(kTertiarycolor, 20),)),
                ),

                GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Popular()),
                            (Route<dynamic> route) => true,
                      );
                    },
                    child: Text('Popular',style: Textt2.textStyle(kTertiarycolor, 20),)),

                GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Chat()),
                            (Route<dynamic> route) => true,
                      );
                    },
                    child: Text('Chat',style: Textt2.textStyle(kTertiarycolor, 20),)),

                Text('Game',style: Textt2.textStyle(kPrimarycolor, 20),),

                GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => PK()),
                            (Route<dynamic> route) => true,
                      );
                    },
                    child: Text('Pk',style: Textt2.textStyle(kTertiarycolor, 20),)),

                IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),
                IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),


              ],
            ),

          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Games',style: Textt2.textStyle(kTertiarycolor, 18),),

                Row(
                  children: [
                    Text('More',style: Textt2.textStyle(kTertiarycolor, 18),),

                    IconButton(icon: Icon(Icons.arrow_forward_ios,size: 15,), onPressed: (){

                    }),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: ShowGame(),
          ),

          Expanded(
            flex: 1,
            child: ShowGameLive(),
          ),

          Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 30.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('HOT LIVE',style: Textt2.textStyle(kTertiarycolor, 22),),

            Row(
              children: [
                Text('MORE',style: Textt2.textStyle(kTertiarycolor, 18),),

                IconButton(icon: Icon(Icons.arrow_forward_ios,size: 15,), onPressed: (){

                }),
              ],
            ),
          ],
          ),
          ),

          Expanded(
            flex: 2,
              child: ShowHotLive()),

        ],
      ),
    );
  }
}
