import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/pklist.dart';

Widget buildpk(BuildContext context, index){
  final data = PkList.list[index];

  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 290,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(image: data.img1,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                            ),
                          ),

                          Container(
                              height: 50,
                              padding: EdgeInsets.only(left: 10.0),
                              child: Image(image: data.sticker1,fit: BoxFit.cover,)),
                          Padding(
                            padding: const EdgeInsets.only(top: 235.0, left: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: kPrimarycolor
                                  ),
                                  child: data.icn1,
                                ),

                                data.icn2,
                                Container(child: Text(data.txt2,style: Textt2.textStyle(Colors.white, 15.0),)),
                                data.icn2,


                              ],
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 290,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(image: data.img2,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 50,
                                  padding: EdgeInsets.only(right: 10.0,top: 7.0),
                                  child: Image(image: data.sticker2,fit: BoxFit.cover,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 235.0, ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: kSecondarycolor
                                  ),
                                  child: data.icn1,
                                ),

                                data.icn3,
                                Container(child: Text(data.txt3,style: Textt2.textStyle(Colors.white, 15.0),)),
                                data.icn3,


                              ],
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),


                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.purple],
                        stops: [0.0,0.7]
                      ),
                    ),
                    child: Center(child: Text(data.txt1,style: Textt2.textStyle(Colors.white, 18),)),
                  ),
                ],
              ),

              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 265.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 230.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: kPrimarycolor,
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 265.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 250.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: kSecondarycolor,
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 265.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Center(child: Text(data.txt4)),
                        ),

                        Container(
                          height: 25,
                          width: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Center(child: Text(data.txt5)),
                        ),

                      ],
                    ),
                  ),


                ],
              ),



            ],
          ),
        ],
      ),
    ),
  );


}