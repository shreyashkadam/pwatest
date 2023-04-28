//To design Flutter UI by including common widgets. (AppBar, Column, Row, Container, Buttons, Text ,) 

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Design',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI Design'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Flutter UI Design!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
