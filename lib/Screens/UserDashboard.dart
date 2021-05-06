import 'package:coviddaily/Screens/Dailylog.dart';
import 'package:coviddaily/constants.dart';
import 'package:flutter/material.dart';
class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorblack,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dailylog()));
                },
                child: Button(
                  'Patient 1',
                  height,
                  width,
                  colorblue,
                ),
              ),
              
            ],
          ),

        ),
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: colorred,
      ),
    );
  }
}
