import 'package:flutter/material.dart';

Color colorblack = Color(0xff2C2F33);
Color colorblue = Color(0xff7289DA);
Color colorwhite = Color(0xffffffff);
Color colorred = Color(0xffFA6767);


Widget textWidget(String text,double value,Color colorVar,double width) {
  return Text(text,
    style: TextStyle(
      fontSize: width*value,
      color: colorVar,
    ),
  );
}

Widget Button(String text,double height,double width, Color color){
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      child: Container(
        height: height * 0.07,
        width: width * 0.6,
        color: color,
        child: Center(
          child: textWidget(text,
              0.05, Colors.white, width),
        ),
      ),
    ),
  );
}

border(double height){
  return new InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: Colors.white ),
      ),
      contentPadding: EdgeInsets.only(top: height*0.01,
          bottom: height*0.01, left: height*0.02),
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(12.0),
        ),
      ),
      filled: true,
      hintStyle: new TextStyle(color: Colors.grey[800]),
      fillColor: Colors.white);
}
