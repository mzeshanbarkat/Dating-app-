import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/chatallcardlist.dart';


Widget buildchatallcard(BuildContext context, index){
  final data = ChatallcardList.list[index];
  return SingleChildScrollView(
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
                        Text(data.text1,style: Textt2.textStyle(kTertiarycolor, 18.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (data.icn1),
                            SizedBox(width: 5,),

                            Text(data.text2),
                            SizedBox(width: 5,),

                            (data.icn1),
                            SizedBox(width: 5,),

                            Container(
                                height: 30,
                                child: Image(image: data.img2)),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(width: 45.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(data.text3,style: Textt1.textStyle(kTertiarycolor, 14.0),),

                        Container(
                            height: 30,
                            child: Image(image: data.img3)),


                      ],
                    ),



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