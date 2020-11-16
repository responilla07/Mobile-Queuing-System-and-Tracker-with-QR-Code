import 'package:flutter/material.dart';
import 'package:queuing_system/Pages/MainPage.dart';
import 'package:queuing_system/Widgets/CustomRaisedButton.dart';
import 'package:queuing_system/Widgets/SubPagesAppBar.dart';
import 'package:queuing_system/Widgets/TextField.dart';
import 'package:queuing_system/transitions/slide_route.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: PreferredSize( 
          preferredSize: Size.fromHeight(45.0),
          child: SubPagesAppBar(
            title: "Registration",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GestureDetector(
          onTap: ()=> FocusScope.of(context).requestFocus(new FocusNode()),
          child: ListView(
            padding: EdgeInsets.all(15),
            primary: false,
            children: [
              Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Login Details',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          height: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyTextField(
                                controller: null,
                                hintText: "Email",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                              MyTextField(
                                controller: null,
                                hintText: "Password",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                              MyTextField(
                                controller: null,
                                hintText: "Confirm Password",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    SizedBox(height: 10,),
                    Text(
                      'User Details',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          height: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "First name",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "Last name",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "Contact Number",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 100,
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "Age",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "State",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: MyTextField(
                                      controller: null,
                                      hintText: "Province",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                ],
                              ),
                              MyTextField(
                                controller: null,
                                hintText: "Complete address",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    SizedBox(height: 20,),
                    Center(
                      child: CustomRaisedButton(
                        title: "REGISTER",
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.pushReplacement(context, SlideRightRoute(page: MainPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
