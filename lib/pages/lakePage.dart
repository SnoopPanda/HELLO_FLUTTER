import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';

class LakePage extends StatelessWidget {

  Widget _buildBtnColumn(Color color, IconData icon, String label) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color:  color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            )
          ),
        ),
      ],
    );
  }

  
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget btnSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildBtnColumn(
              Theme.of(context).primaryColor, Icons.call, 'CALL'),
          _buildBtnColumn(
              Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
          _buildBtnColumn(
              Theme.of(context).primaryColor, Icons.share, 'SHARE'),
      ],
    ),
  );

  Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/lake.jpg',
            fit: BoxFit.cover,
            height: 240,
          ),
          titleSection,
          btnSection,
          textSection
        ],
      ),
    );
  }
}