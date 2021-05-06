import 'package:coviddaily/Screens/Registration.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final node = FocusScope.of(context);
    String email, password;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: colorblack,
          child: Column(
            children: [
              textWidget(
                  'Login using Email and Password',
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
              InkWell(
                onTap: (){
                  Navigator.push(context,  MaterialPageRoute(
                      builder: (context) =>
                          Registration()));
                },
                child: Button(
                  'Login',
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
