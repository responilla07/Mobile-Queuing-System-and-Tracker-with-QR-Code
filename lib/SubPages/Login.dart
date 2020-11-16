import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:queuing_system/Methods/Style.dart';
import 'package:queuing_system/Pages/MainPage.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Widgets/ShowAlertDialogForgotPass.dart';
import 'package:queuing_system/transitions/slide_route.dart';
import 'package:queuing_system/Widgets/TextField.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: backgroundColor(),
        
        child: ListView(
          primary: false,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    SizedBox(height: 35),

                    Image.asset(
                      'assets/logo2.png',
                      fit: BoxFit.cover,
                    ),
                    
                    SizedBox(height: 50),

                    MyTextField(
                      controller: null,
                      hintText: "Email",
                      keyboardType: null,
                      inputFormatter: [],),

                    SizedBox(height: 25),

                    MyTextField(
                      controller: null,
                      hintText: "Password",
                      keyboardType: null,
                      inputFormatter: [],),

                    SizedBox(height: 15),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showAlertForgotPassword(context);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 25),
                    
                    Container(
                      height: 40.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context, SlideRightRoute(page: MainPage()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [secondaryColorLight.withOpacity(0.8),primaryColorLight.withOpacity(0.1)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints:
                                BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 15),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            ),
                          TextSpan(
                            text: 'Sign up here!',
                            style: TextStyle(decoration: TextDecoration.underline,color: primaryColor,fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer().. onTap = () => null,
                          ),
                        ]
                      ),
                    ),
                    // Expanded(child:Container(),),

                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  

  
}
