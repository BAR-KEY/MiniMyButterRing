import 'package:flutter/material.dart';

var mainColor = Color(0xFFFDEDCC);
var subColor = Color(0xFF9d937e);
var theme = ThemeData(
    appBarTheme: AppBarTheme(
        color: mainColor,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
    textTheme: TextTheme(bodyText2: TextStyle(fontFamily: "NanumBarunGothic")),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: mainColor, foregroundColor: subColor));
