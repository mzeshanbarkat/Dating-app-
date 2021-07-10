import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/explorepopularlist.dart';

Widget buildexplorepopular(BuildContext context, index){
  final data = ExplorePopularList.list[index];

  return SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image: data.img1,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                  ),
                ),
              ),

              SizedBox(width: 3,),
              Expanded(
                child: Container(
                  height: 150,
                  width: 250,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image: data.img2,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
                  ),
                ),
              ),

              SizedBox(width: 3,),
              Expanded(
                child: Container(
                  height: 150,
                  width: 250,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image: data.img3,fit: BoxFit.cover,colorFilter: ColorFilter.mode(kTertiarycolor.withOpacity(0.3), BlendMode.multiply),),
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