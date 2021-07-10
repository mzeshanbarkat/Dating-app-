import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/gamelivelist.dart';

Widget buildgamelive(BuildContext context, index){
  final data = GameLiveList.list[index];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(colors: [Colors.black,Colors.blueAccent],
                      stops: [0.0,0.9]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0,top: 12.0,right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            width: 60,
                            height: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                data.icn1,
                                SizedBox(width: 5.0,),
                                Text(data.txt1,style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                          Text(data.txt2,style: Textt1.textStyle(Colors.white, 15),),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,bottom: 30.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: data.img,
                            radius: 25,
                          ),
                          SizedBox(width: 5,),
                          data.flagg,
                          SizedBox(width: 5,),

                          data.icn2,
                          SizedBox(width: 5,),

                          Text(data.txt3,style: Textt1.textStyle(Colors.white, 12.0),),
                          SizedBox(width: 5,),
                          data.icn3,
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0,bottom: 10.0),
                    child: Text(data.txt4,style: Textt1.textStyle(Colors.white, 15.0),),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    ),
  );
}