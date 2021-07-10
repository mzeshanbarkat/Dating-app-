import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Utils/favouritestorylist.dart';
import 'package:onxyconnect/Widget/storypage.dart';

Widget buildfavouritestory(BuildContext context, index){
  final data = FavouriteStoryList.list[index];

  return SingleChildScrollView(
    // scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StoryPage();
                      },
                    ),
                  );

                },
                child: Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(image: data.img,fit: BoxFit.cover),
                  ),
                ),
              ),

              SizedBox(width: 5.0,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(data.txt,style: Textt2.textStyle(kTertiarycolor, 15.0),),
              ),
              data.icn,
            ],
          ),

        ],
      ),
    ),
  );
}