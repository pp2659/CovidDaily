import 'package:coviddaily/Screens/UserDashboard.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final node = FocusScope.of(context);
    String email, password, cpassword;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: colorblack,
          child: Column(
            children: [
              textWidget(
                  'Signup using Email and Password',
                  0.045,
                  colorblue,
                  width),
              textWidget(
                  'Enter Email:',
                  0.045,
                  colorblue,
                  width),
              Container(
                height: height * 0.06,
                child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    textInputAction:
                    TextInputAction.next,
                    onEditingComplete: () => node.nextFocus(),
                    decoration: border(height)),
              ),
              textWidget(
                  'Enter Password:',
                  0.045,
                  colorblue,
                  width),
              Container(
                height: height * 0.06,
                child: TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    textInputAction:
                    TextInputAction.next,
                    onEditingComplete: () => node.nextFocus(),
                    decoration: border(height)),
              ),
              textWidget(
                  'Enter Confirm Password:',
                  0.045,
                  colorblue,
                  width),
              Container(
                height: height * 0.06,
                child: TextField(
                    onChanged: (value) {
                      cpassword = value;
                    },
                    textInputAction:
                    TextInputAction.next,
                    onEditingComplete: () => node.nextFocus(),
                    decoration: border(height)),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDashboard()));
                },
                child: Button(
                  'Signup',
                  height,
                  width,
                  colorblue,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
