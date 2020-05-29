import 'package:flutter/material.dart';
import './pages/homePage.dart';
import './pages/backPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        routes: {
          '/back' : (context) => BackPage(),
        },
        home: HomePage(),
      );
  }
}

