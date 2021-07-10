import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Favourite/favouritefollow.dart';
import 'package:onxyconnect/Model/favouritefollowlive.dart';

class FavFollowLiveList{
  static List<FavouriteFollowLive>list=[
    FavouriteFollowLive(txt1: 'Alina',txt2: 'Live',txt3: '0.01',txt4: 'Say hello to him /her',txt5: 'Do you have any stories',
      txt6: 'have a good day',txt7: '255',txt8: '39',txt9: '200',txt10: 'Hi',
      icn1: Icon(FontAwesomeIcons.stream,color: kPrimarycolor,size: 12,),
      icn2: IconButton(icon: Icon(FontAwesomeIcons.heart,color: kTertiarycolor,), onPressed: (){}),
      icn3: IconButton(icon: Icon(FontAwesomeIcons.comment,color: kTertiarycolor,), onPressed: (){}),
      icn4: IconButton(icon: Icon(Icons.share,color: kTertiarycolor,), onPressed: (){}),
      icn5: IconButton(icon: Icon(FontAwesomeIcons.handSparkles,color: Colors.brown,size: 12.0,), onPressed: (){}),
      icn6: IconButton(icon: Icon(FontAwesomeIcons.volumeUp,color: Colors.white,size: 15,), onPressed: (){}),

      img1: AssetImage('assets/model/actreses4.jpg'),
      img2: AssetImage('assets/model/actreses10.jpg'),

    ),

    FavouriteFollowLive(txt1: 'John',txt2: 'Live',txt3: '0.01',txt4: 'Say hello to him /her',txt5: 'Do you have any stories',
      txt6: 'have a good day',txt7: '255',txt8: '39',txt9: '200',txt10: 'Hi',
      icn1: Icon(FontAwesomeIcons.stream,color: kPrimarycolor,size: 12,),
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