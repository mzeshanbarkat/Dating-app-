import 'package:flutter/material.dart';
import 'package:onxyconnect/Components/raisedbutton.dart';
import 'package:onxyconnect/Components/textfieldd.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/PhoneLogin/loginnumber.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/login.dart';


class SignUp extends StatefulWidget {
  static String id = "signup";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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

                        Text('Welcome',style: Textt2.textStyle(kTertiarycolor, 30),),

                        Text('Enter your credentials to continue',style: Textt1.textStyle(kTertiarycolor, 15),),


                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                child: TextFieldd(
                  obscre: false,
                  hinttextt: "User Name",
                  iconn: Icon(Icons.person),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                child: TextFieldd(
                  obscre: false,
                  hinttextt: "Email",
                  iconn: Icon(Icons.email),

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
                  textt: "SIGN UP",
                  textStyle: Textt2.textStyle(kTertiarycolor, 18),
                  onchanged: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);

                  },
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38,top: 10),
                    child: Text("Forget Password?",style: Textt2.textStyle(kTertiarycolor, 18),),
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("Sign In to Experience all Features",style: Textt1.textStyle(kTertiarycolor, 15),),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('assets/fb.png'),fit: BoxFit.contain,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('assets/google.png'),fit: BoxFit.contain,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginNumber()),);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('assets/mobile.png'),fit: BoxFit.contain,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
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
