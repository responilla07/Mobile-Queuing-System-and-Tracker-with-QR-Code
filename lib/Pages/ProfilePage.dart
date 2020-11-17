import 'package:flutter/material.dart';
import 'package:queuing_system/Presentation/custom_icons_icons.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Variables/size.dart';
import 'package:queuing_system/Widgets/ProfileDetails.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ListView(
          primary: false,
          padding: EdgeInsets.all(15.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(height: PhoneSize(context).height/1.3,),
                    Positioned(
                      top: 80,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 70),
                              ProfileDetails(icon: CustomIcons.profile, text: 'John Doe Mayers',color: Colors.grey,),
    
                              SizedBox(height: 10),
                              ProfileDetails( icon: CustomIcons.contact,text: '22 Years Old',color: Colors.grey,),
                              
                              SizedBox(height: 10),
                              ProfileDetails(icon: Icons.contact_phone,text: '639-323-265-144', color: Colors.grey,),
                        
                              SizedBox(height: 10),
                              ProfileDetails(
                                icon: Icons.location_on,
                                text: '#61 Marinig Cabuya Laguna asd as dsa dasd qeqw asqwdasdsadas dqwe qwe asdqw eas dqwe ad wae dasd as asd asd as da sdas dsa dasdasd asd asdas dasd asd asd asd asdqwe wqe qwe wq',
                                color: Colors.grey,  
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 100,
                      child: Icon(
                        CustomIcons.edit_profile,
                        color: secondaryColor,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 150.0,
                        height: 150.0,
                        decoration: new BoxDecoration(
                          border: Border.all(
                            color: secondaryColor,
                            width: 5,
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.8),
                          //     spreadRadius: 2,
                          //     blurRadius: 5,
                          //     offset: Offset(0, 3),
                          //   ),
                          // ],
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/IU.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}