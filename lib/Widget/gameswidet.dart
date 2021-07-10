import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/gameslist.dart';


Widget buildgame(BuildContext context, index){
  final data = GamesList.list[index];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(image: data.img,fit: BoxFit.fill),
                ),
              ),

              SizedBox(width: 5.0,),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(data.txt,style: Textt1.textStyle(kTertiarycolor, 15.0),),
          ),

        ],
      ),
    ),
  );
}