import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int age = 20;
  bool value = true;
  List<String> list = ["Apple", "Banana", "Mangos"];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programs day 4',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Data types in ui")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$age'),
              Text(value ? "yes" : "no"),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: list.map((fruit)=>Text("$fruit")).toList(),
              )
            ],

          ),
        ),
      ),
    );
  }
}
