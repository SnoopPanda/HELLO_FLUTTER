import 'package:flutter/material.dart';
import '../component/menuDrawer.dart';

class HoriVertAlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal and Vertical Align'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/small-pic-1.jpg'),
            Image.asset('assets/images/small-pic-2.jpg'),
            Image.asset('assets/images/small-pic-3.jpg'),
          ],
        ),
      ),
    );
  }
}
