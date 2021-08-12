import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Magic8(),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int x = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Center(
            child: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30,
          ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/IMG_20190919_224645.jpg'),
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    x = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$x.png')),
          ],
        ),
      ),
    );
  }
}
