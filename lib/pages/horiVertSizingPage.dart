import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';

class HoriVertSizingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal and Vertical Sizing'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/images/small-pic-1.jpg',
                fit: BoxFit.cover,
              ),
              flex: 1,
            ),
            Expanded(
              child: Image.asset(
                'assets/images/small-pic-2.jpg',
                fit: BoxFit.cover,
              ),
              flex: 1,
            ),
            Expanded(
              child: Image.asset(
                'assets/images/small-pic-3.jpg',
                fit: BoxFit.cover,
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
