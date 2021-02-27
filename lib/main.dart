import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Stack(
            children: <Widget>[
              Container(
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                      children: <Widget>[Text('hello'),]
                      ),
                      Column(children: <Widget>[Text('hello'),
      ]),
                      Column(children: <Widget>[Text('hello'),]),
                      Column(children: <Widget>[Text('hello'),]),
                    ],
                  )
              )
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: FlutterSwitch(
              width: 125.0,
              height: 55.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

//