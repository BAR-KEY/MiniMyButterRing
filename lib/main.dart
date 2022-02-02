import 'package:flutter/material.dart';
import './pages/style.dart' as style;
import './pages/sidemenu.dart';
import './pages/imageslider.dart';
import './pages/shop.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(theme: style.theme, home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      body: Column(
        children: [
          Expanded(child: ImageSlider()),
          Expanded(child: Shop()),
        ],
      ),
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
