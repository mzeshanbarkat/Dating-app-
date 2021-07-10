import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/popularbeautylist.dart';


Widget buildpopularbeauty(BuildContext context, index){
  final data = PopularBeautyList.list[index];

  return SingleChildScrollView(
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
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: data.img,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text(data.text1,style: Textt1.textStyle(Colors.white70, 15.0),)),

                            Container(child: Text(data.text2,style: Textt1.textStyle(Colors.white, 18.0),)),

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
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: data.img2,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(data.text3,style: Textt1.textStyle(Colors.white70, 15.0),)),

                            Container(child: Text(data.text4,style: Textt1.textStyle(Colors.white, 18.0),)),

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