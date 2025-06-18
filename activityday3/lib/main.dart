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
      title: 'Activity',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Centrum'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Helow');
          },
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Centrum')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Dashboard'),
                onTap: () {
                  print('Dashboard');
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('My Account'),
              ),
              SizedBox(height: 500),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  print('Logout');
                },
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              tooltip: 'Go to home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              tooltip: 'Go to search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'person',
              tooltip: 'Go to person',
            ),

          ],
        ),
      ),
    );
  }
}
