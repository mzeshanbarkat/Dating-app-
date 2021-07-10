import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/gamehotlivelist.dart';


Widget buildgamehotlive(BuildContext context, index){
  final data = GameHotLiveList.list[index];

  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              gradient: LinearGradient(colors: [Colors.black,Colors.blueAccent],
                                  stops: [0.0,0.9]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,top: 12.0),
                            child: Container(
                              width: 60,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: kTertiarycolor,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 175,top: 12.0),
                            child: Text(data.txt2,style: Textt1.textStyle(Colors.white, 15),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 150.0,left: 10.0),
                            child: Container(
                              width: 120,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: kTertiarycolor,
                              ),
                              child: Center(child: Text(data.txt3,style: Textt1.textStyle(kPrimarycolor, 15.0),)),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(data.txt4,style: Textt2.textStyle(kTertiarycolor, 20.0),),
                              ],
                            ),

                            SizedBox(height: 10.0,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundImage: data.img,
                                  radius: 25,
                                ),
                                SizedBox(width: 5,),

                                data.icn2,
                                SizedBox(width: 5,),

                                Text(data.txt5,style: Textt1.textStyle(kTertiarycolor, 15.0),),
                                SizedBox(width: 5,),
                                data.icn3,
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              gradient: LinearGradient(colors: [Colors.black,Colors.blueAccent],
                                  stops: [0.0,0.9]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,top: 12.0),
                            child: Container(
                              width: 60,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: kTertiarycolor,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 175,top: 12.0),
                            child: Text(data.txt2,style: Textt1.textStyle(Colors.white, 15),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 150.0,left: 10.0),
                            child: Container(
                              width: 120,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: kTertiarycolor,
                              ),
                              child: Center(child: Text(data.txt3,style: Textt1.textStyle(kPrimarycolor, 15.0),)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(data.txt4,style: Textt2.textStyle(kTertiarycolor, 20.0),),
                              ],
                            ),

                            SizedBox(height: 10.0,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundImage: data.img,
                                  radius: 25,
                                ),
                                SizedBox(width: 5,),

                                data.icn2,
                                SizedBox(width: 5,),

                                Text(data.txt5,style: Textt1.textStyle(kTertiarycolor, 15.0),),
                                SizedBox(width: 5,),
                                data.icn3,
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 8.0,),

        ],
      ),
    ),
  );
}