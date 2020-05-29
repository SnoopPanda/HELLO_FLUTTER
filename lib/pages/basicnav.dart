

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/component/menuDrawer.dart';

class BasicNaviPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BASIC NAVIGATION'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: RaisedButton(
          child: Text('PUSH'),
          onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => _BackPage())),
        ),
      ),
    );
  }
  
}

class _BackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Back'),
        ),
      ),
    );
  }
}