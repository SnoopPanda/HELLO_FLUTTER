
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';

class ContainerPage extends StatelessWidget {

  Widget _buildImage(String name) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('assets/images/$name.jpg', fit: BoxFit.cover,),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    var container = Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: 300,
      height: 300,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              _buildImage('small-pic-1'),
              _buildImage('small-pic-2'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildImage('small-pic-3'),
              _buildImage('small-pic-4'),
            ],
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: container,
      ),
    );
  }
}