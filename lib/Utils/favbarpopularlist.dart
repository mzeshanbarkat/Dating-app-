import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Model/favbarpopular.dart';

class FavBarPopularList{
  static List<FavBarPopular>list=[
    FavBarPopular(txt1: 'Alina',txt2: 'Follow',txt3: '0.01',txt4: 'Say hello to him /her',txt5: 'Do you have any stories',
      txt6: 'have a good day',txt7: '255',txt8: '39',txt9: '200',txt10: 'Hi',
      icn1: Icon(Icons.add,color: kPrimarycolor,size: 15,),
      icn2: IconButton(icon: Icon(FontAwesomeIcons.heart,color: kTertiarycolor,), onPressed: (){}),
      icn3: IconButton(icon: Icon(FontAwesomeIcons.comment,color: kTertiarycolor,), onPressed: (){}),
      icn4: IconButton(icon: Icon(Icons.share,color: kTertiarycolor,), onPressed: (){}),
      icn5: IconButton(icon: Icon(FontAwesomeIcons.handSparkles,color: Colors.brown,size: 12.0,), onPressed: (){}),
      icn6: IconButton(icon: Icon(FontAwesomeIcons.volumeUp,color: Colors.white,size: 15,), onPressed: (){}),

      img1: AssetImage('assets/model/actreses4.jpg'),
      img2: AssetImage('assets/model/actreses10.jpg'),

    ),

    FavBarPopular(txt1: 'John',txt2: 'Follow',txt3: '0.01',txt4: 'Say hello to him /her',txt5: 'Do you have any stories',
      txt6: 'have a good day',txt7: '255',txt8: '39',txt9: '200',txt10: 'Hi',
      icn1: Icon(Icons.add,color: kPrimarycolor,size: 15,),
      icn2: IconButton(icon: Icon(FontAwesomeIcons.heart,color: kTertiarycolor,), onPressed: (){}),
      icn3: IconButton(icon: Icon(FontAwesomeIcons.comment,color: kTertiarycolor,), onPressed: (){}),
      icn4: IconButton(icon: Icon(Icons.share,color: kTertiarycolor,), onPressed: (){}),
      icn5: IconButton(icon: Icon(FontAwesomeIcons.handSparkles,color: Colors.brown,size: 12.0,), onPressed: (){}),
      icn6: IconButton(icon: Icon(FontAwesomeIcons.volumeUp,color: Colors.white,size: 15,), onPressed: (){}),

      img1: AssetImage('assets/model/actreses11.jpg'),
      img2: AssetImage('assets/model/actreses11.jpg'),

    ),

  ];
}