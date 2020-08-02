import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice 1',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _data = [
    'Hello',
    'Hi',
    'I am Annie',
    'Lorem Ipsum',
    'Jenny',
    'New Text'
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME',
        ),
        backgroundColor: Colors.teal.shade800,
      ),
      backgroundColor: Colors.teal.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(_data[_index]),
            flex: 5,
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (_index < _data.length) {
                    _index++;
                  } else {
                    _index = 0;
                  }
                });
              },
              child: Text('Change Text'),
            ),
          )
        ],
      ),
    );
  }
}
