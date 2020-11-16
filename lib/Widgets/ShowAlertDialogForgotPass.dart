import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/color.dart';

import 'TextField.dart';

Future showAlertForgotPassword(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Center(
            child: Text(
              "Forgot Password",
              style: TextStyle(
                color: primaryColor,
              ),
            )
          ),
          content: Container(
            height: 170,
            child: Column(
              children: [
                Text("Enter your email and we will give"),
                Text("you a password reset link"),
                SizedBox(height: 20,),
                MyTextField(
                  controller: null,
                  hintText: "Email",
                  keyboardType: null,
                  inputFormatter: [],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                          Navigator.of(context).pop();
                      }, 
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){}, 
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    );
  }