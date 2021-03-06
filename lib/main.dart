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
            child: Center(
              child: Text(
                _data[_index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            flex: 5,
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    if (_index < _data.length - 1) {
                      _index++;
                      print(_index);
                    } else {
                      _index = 0;
                      print(_index);
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Change Text'),
                ),
                color: Colors.teal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
