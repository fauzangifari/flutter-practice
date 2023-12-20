import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[300]!,
          title: Text('MyApp'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hi, I am a Fauzan Gifari',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 20, 20, 20),
              letterSpacing: 3,
            ),
          ),
        ),
      ),
    );
  }
}
