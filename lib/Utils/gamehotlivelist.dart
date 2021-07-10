import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Model/gamehotlivemodel.dart';

class GameHotLiveList{
  static List<GameHotLiveModel>list=[
    GameHotLiveModel(txt1: 'Live',txt2: '0',txt3: 'Mobile Game',txt4: 'Please Follow Back',txt5: 'Alina',
      icn1: Icon(FontAwesomeIcons.stream,size: 12.0,color: kPrimarycolor,),icn2: Icon(FontAwesomeIcons.trophy,size: 12.0,color: kPrimarycolor,),icn3: Icon(FontAwesomeIcons.medal,size: 12.0,color: kPrimarycolor,),
       img: AssetImage('assets/model/singing1.jpg'),
    ),

    GameHotLiveModel(txt1: 'Live',txt2: '0',txt3: 'Mobile Game',txt4: 'Please Follow Back',txt5: 'Alina',
      icn1: Icon(FontAwesomeIcons.stream,size: 12.0,color: kPrimarycolor,),icn2: Icon(FontAwesomeIcons.trophy,size: 12.0,color: kPrimarycolor,),icn3: Icon(FontAwesomeIcons.medal,size: 12.0,color: kPrimarycolor,),
      img: AssetImage('assets/model/singing1.jpg'),
    ),

  ];
}