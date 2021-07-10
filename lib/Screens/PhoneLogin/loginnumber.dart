import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Components/raisedbutton.dart';
import 'package:onxyconnect/Components/textfieldd.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/PhoneLogin/otpscreen.dart';

import '../Login&Signup/login.dart';



class LoginNumber extends StatefulWidget {
  static String id = "loginnumber";

  @override
  _LoginNumberState createState() => _LoginNumberState();
}

class _LoginNumberState extends State<LoginNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Login",style: Textt2.textStyle(kTertiarycolor, 20),),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(icon: Icon(Icons.arrow_back,color: kTertiarycolor,),iconSize: 30,
          onPressed: (){
            Navigator.pop(context);
          },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 80,
                width: 450,
                color: Color(0xffeeeeee),
                child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text("Please Enter your phone number",style: Textt2.textStyle( Color(0xffacacac), 15),)),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Row(
                  children: [
                    Text("Country/Region",style: Textt1.textStyle(kTertiarycolor, 18),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                child: TextFieldd(
                  obscre: false,
                  hinttextt: "Phone Number",
                  iconn: CountryCodePicker(
                    initialSelection: 'US',
                    showCountryOnly: false,
                    favorite: ['+1','US','+92','PAK'],
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 22),
                child: TextFieldd(
                  obscre: true,
                  hinttextt: "Password",
                  iconn: Icon(Icons.lock),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: RaisedBtn(colorr: kPrimarycolor,
                  textt: "LOG IN",
                  textStyle: Textt2.textStyle(kTertiarycolor, 18),
                  onchanged: (){

                  },
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()),);

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child:  Container(
                    width: 350,
                    height: 65,
                    decoration: BoxDecoration(
                      // color: tertiarycolor,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                      ),
                    ),
                    child: Center(
                      child: Text('Login via verification code',style: Textt2.textStyle(kTertiarycolor, 16),),
                    ),
                  ),

                ),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Forget Password?  ",style: Textt1.textStyle(kTertiarycolor, 18),),

                  Container(color: Colors.grey, height: 35, width: 1,),

                  Text("  Account appeal",style: Textt1.textStyle(kTertiarycolor, 18),),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);
                        },
                        child: Container(child: Text('Already have an Account',style: Textt2.textStyle(kTertiarycolor, 18)))),

                    GestureDetector
                      (
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);
                        },
                        child: Container(

                            child: Text( ' Sign In',style: Textt1.textStyle(kSecondarycolor, 18),))),


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
