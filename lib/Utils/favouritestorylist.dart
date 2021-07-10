import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Model/favouritestorymodel.dart';

class FavouriteStoryList{
  static List<FavouriteStory>list=[
    FavouriteStory(img: AssetImage('assets/model/actreses9.jpg'),
    txt: 'Alina',icn: Icon(FontAwesomeIcons.solidHeart,color: Colors.red,),
    ),

    FavouriteStory(img: AssetImage('assets/model/singing1.jpg'),
      txt: 'Alina',icn: Icon(Icons.flare,color: Colors.deepOrangeAccent,),
    ),

    FavouriteStory(img: AssetImage('assets/model/actreses11.jpg'),
      txt: 'John',icn: Icon(FontAwesomeIcons.solidStar,color: kPrimarycolor,),
    ),



  ];
}