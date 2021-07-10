import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/exploreregionslist.dart';


Widget buildexploreregions(BuildContext context, index){
  final data = ExploreRegionsList.list[index];

  return SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        elevation: 4,
                        child: data.flag1,
                      ),

                      SizedBox(height: 10.0,),
                      Center(child: Text(data.txt1,style: Textt1.textStyle(kTertiarycolor, 18.0),)),
                    ],
                  )),
              SizedBox(width: 10.0,),

              Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        elevation: 4,
                        child: data.flag2,
                      ),

                      SizedBox(height: 10.0,),
                      Center(child: Text(data.txt2,style: Textt1.textStyle(kTertiarycolor, 18.0),)),
                    ],
                  )),

              SizedBox(width: 10.0,),

              Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        elevation: 4,
                        child: data.flag3,
                      ),

                      SizedBox(height: 10.0,),
                      Center(child: Text(data.txt3,style: Textt1.textStyle(kTertiarycolor, 18.0),)),
                    ],
                  )),
              SizedBox(width: 10.0,),

              Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        elevation: 4,
                        child: data.flag4,
                      ),

                      SizedBox(height: 10.0,),
                      Center(child: Text(data.txt4,style: Textt1.textStyle(kTertiarycolor, 18.0),)),
                    ],
                  )),


            ],
          ),
          SizedBox(height: 40.0,),

        ],
      ),
    ),
  );


}