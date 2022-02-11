import 'package:flutter/material.dart';
import 'package:minimybutterring/pages/palette.dart';

var theme = ThemeData(
    appBarTheme: const AppBarTheme(
        color: Palette.mainColor,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
    textTheme:
        const TextTheme(bodyText2: TextStyle(fontFamily: "NanumBarunGothic")),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.mainColor, foregroundColor: Palette.subColor));
