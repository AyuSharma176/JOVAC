import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5EFEA),
        primaryColor: Color(0xFF6C4F3D),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF6C4F3D),
          secondary: Color(0xFF9F7AEA),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF6C4F3D)),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Color(0xFF9F7AEA), width: 2),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF6C4F3D),
            foregroundColor: Color(0xFFF5EFEA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/courses': (context) => CoursesPage(),
        '/flutter': (context) => FlutterCoursePage(),
        '/dart': (context) => DartCoursePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, size: 80, color: Colors.brown),
            SizedBox(height: 20),
            Text("Welcome Back!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Login to continue"),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email))),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/dashboard'),
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/signup'),
              child: Text("Don't have an account? Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_add, size: 80, color: Colors.brown),
            SizedBox(height: 20),
            Text("Create Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Sign up to get started"),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(labelText: 'Full Name', prefixIcon: Icon(Icons.person))),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email))),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)), obscureText: true),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: 'Confirm Password', prefixIcon: Icon(Icons.lock)), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/dashboard'),
              child: Text('Sign Up'),
            ),
            TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
              child: Text("Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back,", style: TextStyle(fontSize: 18)),
                Text("John Doe 👋", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDCC1A0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("View Profile"),
                    subtitle: Text("See and edit your personal information."),
                    onTap: () => Navigator.pushNamed(context, '/profile'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDCC1A0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.menu_book),
                    title: Text("View Courses"),
                    subtitle: Text("Continue learning or explore new topics."),
                    onTap: () => Navigator.pushNamed(context, '/courses'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Card(
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/images/img.png')),
                  SizedBox(height: 10),
                  Text("John Doe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("john@example.com"),
                  Divider(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [Text("12"), Text("Courses")]),
                      Column(children: [Text("5"), Text("Badges")]),
                      Column(children: [Text("23"), Text("Rank")]),
                    ],
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('← Back'),
          )
        ],
      ),
    );
  }
}

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Flutter Basics"),
            subtitle: Text("Introduction to Flutter."),
            onTap: () => Navigator.pushNamed(context, '/flutter'),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Dart Language"),
            subtitle: Text("Learn Dart in depth."),
            onTap: () => Navigator.pushNamed(context, '/dart'),
          ),
        ],
      ),
    );
  }
}

class FlutterCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Basics")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Flutter Basics", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Course Description", style: TextStyle(fontSize: 18)),
              Text("Introduction to Flutter.", textAlign: TextAlign.center),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
                label: Text("Start Course"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DartCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dart Language")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Dart Language", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Course Description", style: TextStyle(fontSize: 18)),
              Text("Learn Dart in depth.", textAlign: TextAlign.center),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
                label: Text("Start Course"),
              )
            ],
          ),
        ),
      ),
    );
  }
}