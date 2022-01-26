import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var color = Color(0xFFFDEDCC);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // color:Colors.black;
          ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('MiniMyButterRing'),
            centerTitle: true,
            leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
            actions: const [
              IconButton(icon: Icon(Icons.image), onPressed: null),
              IconButton(icon: Icon(Icons.navigate_next), onPressed: null),
            ],
            backgroundColor: color),
        body: Text('text'),
        bottomNavigationBar: Text('bottomNavigationBar'),
      ),
    );
  }
}
