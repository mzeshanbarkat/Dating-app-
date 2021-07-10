import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/ShowScreens/seeallchat.dart';
import 'package:onxyconnect/Utils/chatallcardlist.dart';
import 'package:onxyconnect/Utils/chathotlist.dart';
import 'package:onxyconnect/Widget/chatallcard.dart';
import 'package:onxyconnect/Widget/chathot.dart';
import 'package:onxyconnect/Widget/circularavater.dart';


class ShowChatAll extends StatefulWidget {
  static String id = 'showchatall';
  @override
  _ShowChatAllState createState() => _ShowChatAllState();
}

class _ShowChatAllState extends State<ShowChatAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10.0,),
          Container(
            height: 50.0,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xfff0e9b0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Nearby friends',style: Textt2.textStyle(kTertiarycolor, 20),),

                  CircleAvaterr(img: 'assets/model/actreses2.jpg'),
                  CircleAvaterr(img: 'assets/model/dance6.jpg'),
                  CircleAvaterr(img: 'assets/model/dance3.jpg'),

                  IconButton(icon: Icon(Icons.arrow_forward_ios,size: 15.0,), onPressed: (){}),

                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10,top: 8.0),
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
                  child: Text('Let\'s Party',style: Textt2.textStyle(kTertiarycolor, 20),),
                ),


              ],
            ),
          ),

          Container(
            height: 250,
            width: 400,
            color: Color(0xfff2f2f2),
            child: Column(
              children: [
                Expanded(child: SeeAllChat()),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('See All',style: Textt2.textStyle(kTertiarycolor, 20.0),),
                    IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SeeAllChat()),);
                    }),
                  ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 3,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 10.0),
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
                  child: Text('Hot',style: Textt2.textStyle(kTertiarycolor, 25),),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: ChathotList.list.length,
                  itemBuilder: (BuildContext context, int index )
                  => buildchathot(context,index)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
