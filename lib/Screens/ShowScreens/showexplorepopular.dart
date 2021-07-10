import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/explorepopularlist.dart';
import 'package:onxyconnect/Widget/explorepopular.dart';

class ShowExplorePopular extends StatefulWidget {
  @override
  _ShowExplorePopularState createState() => _ShowExplorePopularState();
}

class _ShowExplorePopularState extends State<ShowExplorePopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:  Column(
        children: [
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
                  child: Text('Popular',style: Textt2.textStyle(kTertiarycolor, 20),),
                ),


              ],
            ),
          ),


          Expanded(
            child: ListView.builder(
              itemCount: ExplorePopularList.list.length,
              itemBuilder: (BuildContext context, int index )
              => buildexplorepopular(context,index),
            ),
          ),
        ],
      ),
    );
  }
}
