import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/component/menuDrawer.dart';

class NamedRouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Route'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: RaisedButton(
          child: Text(
            'go'
          ),
          onPressed: () => Navigator.of(context).pushNamed('/back'),
        ),
      ),
    );
  }
  
}