import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project day 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          title: Text("Programs"),
          actions: [

            Icon(Icons.login),
            SizedBox(width: 20,),
            Icon(Icons.logout)
          ],
          centerTitle: true,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [],
        ),

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          tooltip: 'Go to home',),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'search',
          tooltip: 'Go to search',),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'person',
            tooltip: 'Go to person',),
        ]),
      ),
    );
  }
}
