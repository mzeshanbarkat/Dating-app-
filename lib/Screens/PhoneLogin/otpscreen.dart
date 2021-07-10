import 'package:flutter/material.dart';
import 'package:onxyconnect/Components/phoneverifyscreen.dart';
import 'package:onxyconnect/Components/raisedbutton.dart';
import 'package:onxyconnect/Components/textfieldd.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/signup.dart';

import '../Login&Signup/login.dart';

class OtpScreen extends StatefulWidget {
  static String id = "otpscreen";

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image:  new DecorationImage(
                      image: new ExactAssetImage("assets/logo.png"),
                    ),
                  ),
                ),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Enter OTP',style: Textt2.textStyle(kTertiarycolor, 30),),

                        Text('Please Enter one time Paassword',style: Textt1.textStyle(kTertiarycolor, 15),),

                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Expanded(
                        flex:1,
                        child: VerifyTextFieldd(),),

                    SizedBox(width: 10.0,),
                    Expanded(
                        flex:1,
                        child: VerifyTextFieldd()),

                    SizedBox(width: 10.0,),
                    Expanded(
                        flex:1,
                        child: VerifyTextFieldd()),

                    SizedBox(width: 10.0,),
                    Expanded(
                        flex:1,
                        child: VerifyTextFieldd()),

                    SizedBox(width: 10.0,),
                    Expanded(
                        flex:1,
                        child: VerifyTextFieldd()),

                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: RaisedBtn(colorr: kPrimarycolor,
                  textt: "LOG IN",
                  textStyle: Textt2.textStyle(kTertiarycolor, 18),
                  onchanged: (){

                  },
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38,top: 15),
                    child: Text("Forget Password?",style: Textt2.textStyle(kTertiarycolor, 18),),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector
                      (
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()),);
                        },
                        child: Container(child: Text('Don\'t have an Account?',style: Textt2.textStyle(kTertiarycolor, 18)))),

                    GestureDetector
                      (
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()),);
                        },
                        child: Container(

                            child: Text( ' Sign Up',style: Textt1.textStyle(kSecondarycolor, 18),))),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}


