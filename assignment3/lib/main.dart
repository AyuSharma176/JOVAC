import'package:flutter/material.dart';
import 'package:assignment3/pages/home_page.dart';
import 'package:assignment3/pages/Contact_page.dart';
import 'package:assignment3/pages/About_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Aboutpage(),
    HomePage(),
    Contactpage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Resume App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('RESUME APP'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [
            Icon(Icons.settings)
          ],
          centerTitle: true,

        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          iconSize: 30,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,

          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
              tooltip: 'About My self',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                tooltip: 'Go to Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page),
                label: 'Contact',
                tooltip: 'Contact Details'
            ),
          ],
        ),
      ),
    );
  }

}
