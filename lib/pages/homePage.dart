
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/menuDrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: MenuDrawer(),
        body: Center(
          child: Text(
            'My Fullter Demo',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
    );
  }
}