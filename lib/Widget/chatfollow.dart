import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/chatfollowlist.dart';

Widget buildchatfollow(BuildContext context, index){
  final data = ChatfollowList.list[index];
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: data.img,
                      radius: 40,
                    ),
                    SizedBox(width: 8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(data.text1,style: Textt2.textStyle(kTertiarycolor, 15.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (data.icn1),
                            SizedBox(width: 5,),

                            Text(data.text2),
                            SizedBox(width: 5,),

                            (data.icn1),
                            SizedBox(width: 5,),


                          ],
                        ),

                      ],
                    ),
                    SizedBox(width: 62.0,),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.teal
                      ),
                      child: Center(child: Text('Follow me',style: Textt2.textStyle(kTertiarycolor, 12),)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}