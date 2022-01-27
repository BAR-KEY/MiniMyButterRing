import 'package:flutter/material.dart';
import 'style.dart' as style;
import './pages/sidemenu.dart';

void main() {
  runApp(MaterialApp(theme: style.theme, home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: style.subColor),
        title: Text('MiniMyButterRing'),
        centerTitle: true,
        actions: const [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
          ),
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
      body: Text('text'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined), onPressed: null),
            IconButton(
                icon: Icon(Icons.delivery_dining_sharp), onPressed: null),
          ]),
    );
  }
}
