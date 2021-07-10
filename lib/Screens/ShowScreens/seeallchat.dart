import 'package:flutter/material.dart';
import 'package:onxyconnect/Utils/chatallcardlist.dart';
import 'package:onxyconnect/Widget/chatallcard.dart';


class SeeAllChat extends StatefulWidget {
  @override
  _SeeAllChatState createState() => _SeeAllChatState();
}

class _SeeAllChatState extends State<SeeAllChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ChatallcardList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildchatallcard(context,index)
      ),
    );
  }
}
