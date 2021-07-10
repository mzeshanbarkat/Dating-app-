import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/chathotlist.dart';

Widget buildchathot(BuildContext context, index){
  final data = ChathotList.list[index];

  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: data.img,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(data.text1,style: Textt2.textStyle(Colors.white, 20),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 120.0, left: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: data.img2,
                            ),
                            CircleAvatar(
                              backgroundImage: data.img3,
                            ),
                            CircleAvatar(
                              backgroundImage: data.img4,
                            ),

                          ],
                        ),
                      ),
                    ],

                  ),
                ),
              ),

              SizedBox(width: 5,),
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: data.img1,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 5,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(data.text2,style: Textt2.textStyle(Colors.white, 20),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120.0, left: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            CircleAvatar(
                              backgroundImage: data.img4,
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
        ],
      ),
    ),
  );


}