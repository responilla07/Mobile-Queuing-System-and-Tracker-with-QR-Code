import 'package:flutter/material.dart';
import 'package:queuing_system/Class/RegistrationClass.dart';
import 'package:queuing_system/Pages/MainPage.dart';
import 'package:queuing_system/Widgets/CustomRaisedButton.dart';
import 'package:queuing_system/Widgets/SubPagesAppBar.dart';
import 'package:queuing_system/Widgets/TextField.dart';
import 'package:queuing_system/transitions/slide_route.dart';
import 'package:toast/toast.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  RegistrationClass registration = RegistrationClass();

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
                    SizedBox(height: 5,),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Container(
                          height: 180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyTextField(
                                controller: registration.email,
                                hintText: "Email",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                              MyTextField(
                                controller: registration.password,
                                hintText: "Password",
                                keyboardType: null,
                                inputFormatter: [],
                              ),
                              MyTextField(
                                controller: registration.confirmPassword,
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
                    SizedBox(height: 5,),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Container(
                          height: 240,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: MyTextField(
                                      controller: registration.firstName,
                                      hintText: "First name",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    child: MyTextField(
                                      controller: registration.lastName,
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
                                      controller: registration.contactNumber,
                                      hintText: "Contact Number",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: 100,
                                    child: MyTextField(
                                      controller: registration.age,
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
                                      controller: registration.state,
                                      hintText: "State",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    child: MyTextField(
                                      controller: registration.province,
                                      hintText: "Province",
                                      keyboardType: null,
                                      inputFormatter: [],
                                    ),
                                  ),
                                ],
                              ),
                              MyTextField(
                                controller: registration.completeAddress,
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
                    SizedBox(height: 15,),
                    Center(
                      child: CustomRaisedButton(
                        title: "REGISTER",
                        onTap: (){
                          if (registration.validate("fields")) {
                            registration.processRegistration(context).then((isRegistered){
                              if (isRegistered) {
                                print("User created........");
                                Navigator.pop(context);
                                Navigator.pushReplacement(context, SlideRightRoute(page: MainPage()));
                              }
                            });
                          } else {
                            Toast.show(registration.validate("message"), context, duration: 4, gravity: Toast.BOTTOM);
                          }
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
