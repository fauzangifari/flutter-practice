import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.amber,
  ];

  final List<Widget> myList =
      List.generate(10, (index) => Text(index.toString()));

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
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            centerTitle: true,
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                height: 10,
              );
            },
            itemCount: myColors.length,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: 300,
                color: myColors[index],
              );
            },
          )),
    );
  }
}
