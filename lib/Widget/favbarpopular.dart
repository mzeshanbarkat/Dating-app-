import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/favbarpopularlist.dart';

Widget buildfavbarpopular(BuildContext context, index){
  final data = FavBarPopularList.list[index];

  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: data.img1,
                      ),
                      SizedBox(width: 10.0,),
                      Text(data.txt1,style: Textt2.textStyle(kTertiarycolor, 18.0),),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          border: Border.all(
                            color: kTertiarycolor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            data.icn1,
                            SizedBox(width: 8.0,),
                            Text(data.txt2,style: Textt2.textStyle(kTertiarycolor, 15),),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: 10.0),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: data.img2,fit: BoxFit.cover,)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              data.icn6,

                              Text(data.txt3,style: Textt2.textStyle(Colors.white, 15.0),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              Container(
                width: 370,
                height: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xfff2f2f2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data.txt4,style: Textt2.textStyle(kTertiarycolor, 18.0),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            height: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              border: Border.all(
                                color: kTertiarycolor,
                              ),),
                            child: Center(child: Text(data.txt5,style: Textt1.textStyle(kTertiarycolor, 15.0),)),

                          ),

                          SizedBox(width: 8,),
                          Container(
                            width: 130,
                            height: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              border: Border.all(
                                color: kTertiarycolor,
                              ),),
                            child: Center(child: Text(data.txt6,style: Textt1.textStyle(kTertiarycolor, 15.0),)),

                          ),


                        ],
                      )
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      data.icn2,
                      Text(data.txt7,style: Textt1.textStyle(kTertiarycolor, 15.0),),

                      data.icn3,
                      Text(data.txt8,style: Textt1.textStyle(kTertiarycolor, 15.0),),

                      data.icn4,
                      Text(data.txt9,style: Textt1.textStyle(kTertiarycolor, 15.0),),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xfff2f2f2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child:data.icn5,),
                            Expanded(child: Text(data.txt10,style: Textt2.textStyle(kTertiarycolor, 12.0),)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),

          SizedBox(height: 20.0,),
        ],
      ),
    ),
  );

}