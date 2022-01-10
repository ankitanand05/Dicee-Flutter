import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.green,
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
  int leftDiceNumber = 1;
  int rightDiceNumbe = 1;
  int DiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                  DiceNumber = Random().nextInt(6) + 1;
                 // print('LeftDiceNumber = $leftDiceNumber');
                });

              },
              child: Image.asset('images/dice$DiceNumber.png'),
            ),
            // child: Image(
            //   image: AssetImage('images/dice1.png'),
            // ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNumbe = Random().nextInt(6)+1;
                  DiceNumber = Random().nextInt(6) +1 ;
                  // print('RightDiceumber = $DiceNumber');
                });
              },
              child: Image.asset('images/dice$DiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


