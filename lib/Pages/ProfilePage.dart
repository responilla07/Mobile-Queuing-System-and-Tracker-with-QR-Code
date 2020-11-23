import 'package:flutter/material.dart';
import 'package:queuing_system/Presentation/custom_icons_icons.dart';
import 'package:queuing_system/SubPages/EditProfile.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Variables/size.dart';
import 'package:queuing_system/Widgets/ProfileDetails.dart';
import 'package:queuing_system/Widgets/TextField.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool editpro = true;

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
                    Container(height: PhoneSize(context).height / 1.0),
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
                            children: [
                              Visibility(
                                visible: !editpro,
                                child: Column(
                                  children: [
                                    SizedBox(height: 60),
                                    EditProfile(
                                      icon: Icon(Icons.mail),
                                      text: 'Email',
                                      initialValue: 'bautistaivan_26@yahoo.com',
                                    ),
                                    EditProfile(                                      
                                      icon: Icon(Icons.lock),
                                      text: 'Password',
                                      initialValue: 'asdsadas',
                                    ),
                                    EditProfile(                                      
                                      icon: Icon(Icons.lock),
                                      text: 'Confirm Password',
                                      initialValue: 'asdsadas',
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: EditProfile(
                                            text: 'First Name',
                                            initialValue: 'John Doe',
                                            icon: Icon(CustomIcons.profile),
                                          ),
                                        ),
                                        Flexible(
                                          child: EditProfile(
                                            text: 'Last Name',
                                            initialValue: 'Mayers',
                                            icon: null,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: EditProfile(
                                            text: 'Contact Number',
                                            initialValue: '639-323-265-144',
                                            icon: Icon(Icons.contact_phone),
                                          ),
                                        ),
                                        Flexible(
                                          child: EditProfile(
                                            text: 'Age',
                                            initialValue: '22',
                                            icon: Icon(Icons.cake),
                                          ),
                                        ),
                                      ],
                                    ),                                   
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Flexible(
                                          
                                          child: EditProfile(
                                            text: 'State',
                                            initialValue: 'Cabuyao',
                                            icon: Icon(Icons.location_on),
                                          ),
                                        ),
                                        Flexible(
                                          child: EditProfile(
                                            text: 'Province',
                                            initialValue: 'Laguna',
                                            icon: null,
                                          ),
                                        ),
                                      ],
                                    ),                                           
                                    SizedBox(height: 10),
                                    EditProfile(
                                      text: 'Complete Address',
                                      initialValue:
                                          '# 168 Purok 1, Barangay kabuto',
                                      icon: Icon(Icons.home),
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: editpro,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 70),
                                    SizedBox(height: 50),
                                    ProfileDetails(
                                        icon: Icons.contact_phone,
                                        text: '639-323-265-144',
                                        color: Colors.grey),
                                    SizedBox(height: 10),
                                    ProfileDetails(
                                        icon: Icons.cake,
                                        text: '22 Years Old',
                                        color: Colors.grey),
                                    SizedBox(height: 10),
                                    ProfileDetails(
                                      icon: Icons.location_on,
                                      text: 'Calamba, City Laguna',
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 10),
                                    ProfileDetails(
                                      icon: Icons.home,
                                      text: '# 168 Purok 1, Barangay kabuto',
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Visibility(
                        visible: editpro,
                        child: Column(
                          children: [
                            Text(
                              'Jonh Doe Mayers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text('bautistaivan_26@yahoo.com',
                                style: TextStyle(color: Colors.black54)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 100,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (editpro == false) {
                              editpro = true;
                            } else {
                              editpro = false;
                            }
                          });
                        },
                        child: Icon(
                          editpro ? CustomIcons.edit_profile : Icons.save,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Stack(
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                              border: Border.all(
                                color: secondaryColor,
                                width: 5,
                              ),
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/IU.jpg'),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: !editpro,
                            child: Positioned(
                              bottom: 0,
                              right: 0,
                              child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: primaryColor,
                                child: Icon(
                                  Icons.create,
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                        ],
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

class EditProfile extends StatelessWidget {
  const EditProfile({
    Key key,
    @required this.text,
    @required this.initialValue,
    @required this.icon,
  }) : super(key: key);

  final String text;
  final String initialValue;
  final Icon icon;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Text('$text'),
          ),
          Container(
            height: 40,
            child: MyTextField(
              initial: initialValue,
              icons: icon,
              controller: null,
              hintText: "$text",
              keyboardType: null,
              inputFormatter: [],
            ),
            // child: TextFormField(
            //   initialValue: '$initialValue',
            //   decoration: new InputDecoration(
            //       prefixIcon: icon,
            //       labelStyle: new TextStyle(color: const Color(0xFF424242))),
            // ),
          ),
        ],
      ),
    );
  }
}
