import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Center(
              child: Text('Dice')
          ),
          backgroundColor: Colors.white10
        ),
        body: DicePage(),
      ),
    ),
  );
} 
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  left = Random().nextInt(6)+1;
                  print('dicenumber = $left');
                   });
                },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  right = Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$right.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


