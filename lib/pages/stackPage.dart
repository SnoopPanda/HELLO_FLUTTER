import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/component/menuDrawer.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Stack(
          alignment: const Alignment(0, 0.6),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/middle-pic-1.jpg'),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
                'Mia B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}