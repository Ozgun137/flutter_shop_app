import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './widgets/main_drawer.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deneme App',
      theme: ThemeData(
        primarySwatch: Colors.purple,

        //We can define fonts here
      ),
      home: HomePage(),
    );
  }
}
