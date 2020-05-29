

import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';

class TapboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBox'),
      ),
      drawer: MenuDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _TapboxA(),
            _TapboxCParent(),
            _TapboxBParent(),
          ],
        ),
      ),
    );
  }
}

class _TapboxA extends StatefulWidget {
  _TapboxA({Key key}) : super(key : key);
  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<_TapboxA> {
  bool _active = false;

  void _onTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          _active?'Active' : 'Inactive',
          style: TextStyle(fontSize:  32, color: Colors.white),
        ),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: _active?Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
  
}

class _TapboxBParent extends StatefulWidget {
  @override
  _TapboxBParentState createState() => _TapboxBParentState();
}

class _TapboxBParentState extends State<_TapboxBParent> {

  bool _active = false;
  void _onChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _TapboxB(
        active : _active,
        onChanged: _onChanged,
      ),
    );
  }
}

class _TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  _TapboxB({
    Key key,
    this.active: false,
    @required this.onChanged,
  }) : super(key: key);

  void _onTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: active? Colors.lightGreen[700]: Colors.grey[600],
        ),
      ),
    );
  }
}

class _TapboxCParent extends StatefulWidget {
  @override
  _TapboxCParentState createState() => _TapboxCParentState();
}

class _TapboxCParentState extends State<_TapboxCParent> {
  bool _active = false;

   void _onChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _TapboxC(
        active: _active,
        onChanged: _onChanged,
      ),
    );
  }
  
}

class _TapboxC extends StatefulWidget {
  final bool active;
final ValueChanged<bool> onChanged;

  _TapboxC({
    Key key,
    this.active: false,
    @required this.onChanged,
  }): super(key: key);
  @override
  _TapboxCState createState() => 
    _TapboxCState();
}

class _TapboxCState extends State<_TapboxC> {
  bool _highlight = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _onTap() {
    widget.onChanged(!widget.active);
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: _onTap,
      onTapCancel: _onTapCancel,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          widget.active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                  color: Colors.teal[700],
                  width: 10,
                )
              : null,
        ),
      ),
    );
  }
}