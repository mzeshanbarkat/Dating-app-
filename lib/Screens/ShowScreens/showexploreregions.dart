import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/exploreregionslist.dart';
import 'package:onxyconnect/Widget/regions.dart';

class ShowExploreRegions extends StatefulWidget {
  @override
  _ShowExploreRegionsState createState() => _ShowExploreRegionsState();
}

class _ShowExploreRegionsState extends State<ShowExploreRegions> {
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
                  child: Text('Regions',style: Textt2.textStyle(kTertiarycolor, 20),),
                ),


              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: ExploreRegionsList.list.length,
              itemBuilder: (BuildContext context, int index )
              => buildexploreregions(context,index),
            ),
          ),
        ],
      ),
    );
  }
}
