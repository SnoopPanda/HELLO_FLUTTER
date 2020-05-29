

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';


class _Todo {
  final String title;
  final String description;
  _Todo(this.title, this.description);
}

class SendDataPage extends StatelessWidget {

  final todos = List.generate(
    20, 
    (i) => _Todo(
      'Todo $i', 'A description for Todo $i'
      ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Data'),
      ),
      drawer: MenuDrawer(),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todos[index].title),
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _DetailPage(todo: todos[index]),
          )),
        ),
      )
    );
  }
}

class _DetailPage extends StatelessWidget {
  final _Todo todo;
  _DetailPage({
    Key key,
    @required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${todo.title}'),
      ),
      body: Center(
        child: Text('${todo.description}'),
      ),
    );
  }
  
}