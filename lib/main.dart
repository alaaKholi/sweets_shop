import 'package:cake_shop_app/body.dart';
import 'package:cake_shop_app/const.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: kTextLightColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.white),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: kTextColor), onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: kTextColor), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: kTextColor),
              onPressed: () {}),
        ],
      ),
      body: Body(),
    );
  }
}
