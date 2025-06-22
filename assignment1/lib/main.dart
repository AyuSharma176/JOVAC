import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            width: 300,
            height:400,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60, // Replace with your image
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ayush Sharma',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Software Engineer',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.black54),
                    SizedBox(width: 10),
                    Text('+91-9874561257'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.black54),
                    SizedBox(width: 10),
                    Text('ayusharma@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}