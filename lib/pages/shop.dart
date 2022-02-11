import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final firestore = FirebaseFirestore.instance;

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  var shopList = [];
  getData() async {
    try {
      var result = await firestore.collection('product').get();
      if (result.docs.isNotEmpty) {
        shopList = result.docs;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shopList.length,
      itemBuilder: (c, i) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(shopList[i]['name']),
            Text(shopList[i]['price'].toString()),
          ],
        );
      },
    );
  }
}
