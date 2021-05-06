import 'package:coviddaily/Screens/Graph.dart';
import 'package:coviddaily/constants.dart';
import 'package:flutter/material.dart';

class Dailylog extends StatefulWidget {
  @override
  _DailylogState createState() => _DailylogState();
}

class _DailylogState extends State<Dailylog> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final node = FocusScope.of(context);
    String oxygen, temperature;
    return Scaffold(
      backgroundColor: colorblack,
      body: SafeArea(
        child: Column(
          children: [
            textWidget(
                'Enter Oxygen level:',
                0.045,
                colorblue,
                width),
            Container(
              height: height * 0.06,
              child: TextField(
                  onChanged: (value) {
                    oxygen = value;
                  },
                  textInputAction:
                  TextInputAction.next,
                  onEditingComplete: () => node.nextFocus(),
                  decoration: border(height)),
            ),
            textWidget(
                'Enter Temperature in F:',
                0.045,
                colorblue,
                width),
            Container(
              height: height * 0.06,
              child: TextField(
                  onChanged: (value) {
                  temperature = value;
                  },
                  textInputAction:
                  TextInputAction.next,
                  onEditingComplete: () => node.nextFocus(),
                  decoration: border(height)),
            ),
            InkWell(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Graph()));
              },
              child: Button(
                'Save',
                height,
                width,
                colorblue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
