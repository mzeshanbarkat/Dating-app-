import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';

class Profile extends StatefulWidget {
  static String id='profile';
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/model/actreses2.jpg'),
                    ),
                  ),
                ),

                SizedBox(height: 12.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alina',style: Textt2.textStyle(kTertiarycolor, 28.0),),
                    SizedBox(width: 8.0,),

                    Stack(
                      children: [
                        Icon(FontAwesomeIcons.solidStar,color: Colors.grey,size: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                          child: Icon(FontAwesomeIcons.check,color: Colors.white,size: 15.0,),
                        ),

                      ],
                    ),
                    SizedBox(width: 8.0,),

                    Container(
                        height: 35 ,
                        child: Image.asset('assets/key.jpg')),

                    SizedBox(width: 8.0,),
                    Container(
                      width: 45,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.cyanAccent
                      ),
                      child: Center(child: Text('LV.2',style: Textt2.textStyle(Colors.white, 15.0),),),
                    ),
                  ],
                ),

                SizedBox(height: 12.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ID:73583076',style: Textt2.textStyle(kTertiarycolor, 20.0),)
                  ],
                ),

                SizedBox(height: 12.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.orangeAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(FontAwesomeIcons.crown,color: Colors.white,),
                          Text('Check My VIP',style: Textt1.textStyle(Colors.white, 18.0),),

                          Icon(Icons.arrow_forward_ios,color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('5',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                        Text('Friends',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                      ],
                    ),
                    Container(color: Colors.grey, height: 35, width: 1,),

                    Column(
                      children: [
                        Text('12',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                        Text('Following',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                      ],
                    ),
                    Container(color: Colors.grey, height: 35, width: 1,),

                    Column(
                      children: [
                        Text('7',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                        Text('Fans+7',style: Textt2.textStyle(kTertiarycolor, 15.0),),
                      ],
                    ),

                  ],
                ),
              ],
            ),

            Divider(),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.green
                            ),
                            child: Icon(Icons.chat_bubble,color: Colors.white),
                          ),
                          SizedBox(width: 10,),
                          Text('Messages',style: Textt1.textStyle(kTertiarycolor, 20),)
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kPrimarycolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text('26',style: Textt2.textStyle(Colors.white, 18),),
                        ),
                      ),
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: kPrimarycolor
                            ),
                            child: Icon(FontAwesomeIcons.dollarSign,color: Colors.white),
                          ),
                          SizedBox(width: 10,),
                          Text('Wallet',style: Textt1.textStyle(kTertiarycolor, 20),)
                        ],
                      ),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                          color: kPrimarycolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),

                  Divider(),

                  Row(
                    children: [
                      Stack(
                        children: [
                          Icon(FontAwesomeIcons.solidStar,color: kSecondarycolor,size: 30.0,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.check,color: Colors.white,size: 15.0,),
                          ),

                        ],
                      ),
                      SizedBox(width: 10,),
                      Text('Authentication Center',style: Textt1.textStyle(kTertiarycolor, 20),)
                    ],
                  ),

                  Divider(),

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.deepOrange
                        ),
                        child: Icon(FontAwesomeIcons.heart,color: Colors.white),
                      ),
                      SizedBox(width: 10,),
                      Text('Fans Group',style: Textt1.textStyle(kTertiarycolor, 20),)
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.green
                            ),
                            child: Icon(FontAwesomeIcons.clock,color: Colors.white),
                          ),
                          SizedBox(width: 10,),
                          Text('Task Center',style: Textt1.textStyle(kTertiarycolor, 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('Rewards',style: Textt1.textStyle(kTertiarycolor, 20),),
                          SizedBox(width: 10,),

                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.green
                            ),
                            child: Icon(Icons.card_giftcard_outlined,color: Colors.white),
                          ),

                        ],
                      ),
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.green
                            ),
                            child: Icon(Icons.shopping_bag,color: Colors.white),
                          ),
                          SizedBox(width: 10,),
                          Text('Items Bags',style: Textt1.textStyle(kTertiarycolor, 20),)
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kPrimarycolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text('2',style: Textt2.textStyle(Colors.white, 18),),
                        ),
                      ),
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.brown
                            ),
                            child: Icon(FontAwesomeIcons.volumeUp,color: Colors.black),
                          ),
                          SizedBox(width: 10,),
                          Text('Activities',style: Textt1.textStyle(kTertiarycolor, 20),)
                        ],
                      ),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                          color: kPrimarycolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),

                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

