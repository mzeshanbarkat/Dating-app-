import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/chatfollowlist.dart';
import 'package:onxyconnect/Widget/chatfollow.dart';

class ShowChatFollow extends StatefulWidget {
  @override
  _ShowChatFollowState createState() => _ShowChatFollowState();
}

class _ShowChatFollowState extends State<ShowChatFollow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 7,
                    decoration: BoxDecoration(
                        color: kPrimarycolor,
                        borderRadius: BorderRadius.circular(7.0)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Let\'s Follow',style: Textt2.textStyle(kTertiarycolor, 20),),
                  ),
                ],
              ),
            ),
          ),


          Expanded(
            flex: 15,
            child: ListView.builder(
                itemCount: ChatfollowList.list.length,
                itemBuilder: (BuildContext context, int index )
                => buildchatfollow(context,index)
            ),
          ),
        ],
      ),
    );
  }
}
