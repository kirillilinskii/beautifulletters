import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'letters',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              BeautifulLetters(
                name: 'Michael',
                grad: 94,
                fontSizeLetters: 70,
                numberColor: Color(0xFFdab371),
                backgroundColor: Colors.grey[50],
              ),
              BeautifulLetters(
                name: 'Kirill',
                grad: 100,
                numberColor: Color(0xFFdab371),
                backgroundColor: Colors.grey[50],
              ),
              BeautifulLetters(
                name: 'Andrey',
                grad: 25,
                numberColor: Color(0xFFdab371),
                backgroundColor: Colors.grey[50],
                fontSizeLetters: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeautifulLetters extends StatelessWidget {
  final String name;
  final int grad;
  final Color numberColor;
  final Color backgroundColor;
  final double fontSizeLetters;
  //final double fontSizeNumbers;
  BeautifulLetters({
    this.name,
    this.grad,
    this.numberColor,
    this.backgroundColor,
    //   this.fontSizeNumbers: 40,
    this.fontSizeLetters: 30,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            name,
            style: TextStyle(
              fontSize: fontSizeLetters,
              color: Color(0xFF3f3f3f),
              letterSpacing: 8,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Text(
                grad.toString(),
                style: TextStyle(
                  fontSize: fontSizeLetters * 7 / 10,
                  color: numberColor,
                  letterSpacing: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  '°',
                  style: TextStyle(
                    fontSize: fontSizeLetters * 7 / 10 + 3,
                    color: numberColor,
                    letterSpacing: 2,
                  ),
                ),
              ),
              /* Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 4),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: numberColor,
                  child: CircleAvatar(
                    backgroundColor: backgroundColor,
                    radius: 3,
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ],
    );
  }
}
