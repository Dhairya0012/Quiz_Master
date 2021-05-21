import 'package:flutter/material.dart';

import 'Screens/home-screen/home-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz With Flutter",
      home: homePage(),
    );
  }
}
