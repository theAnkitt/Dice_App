import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget {

  @override
  State<myApp> createState() => _myAppState();
}
class _myAppState extends State<myApp> {
  var a = 1;
  var b = 6;
  getRandomNum(){
    var rand = Random();
    setState(() {
      a = rand.nextInt(6) + 1;
      b = rand.nextInt(6) + 1;
    });
  }
  resetDice(){
    setState(() {
      a = 1;
      b = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('Dice App'),backgroundColor: Colors.red,),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(onPressed: getRandomNum , child: SizedBox(child: Image.asset("images/dice$a.png"),)),
        )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: getRandomNum, child: SizedBox(child: Image.asset("images/dice$b.png"),)),
          )),
      ],),
        Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: ElevatedButton(onPressed: resetDice,
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)), child: const Text("Reset"),),)
        ],),), backgroundColor: Colors.redAccent,));
  }
}
