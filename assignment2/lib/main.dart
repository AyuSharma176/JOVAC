import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/2.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ayush Sharma',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              const Text(
                'Bangalore, India',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  SkillChip(label: 'UI/UX Design'),
                  SkillChip(label: 'User Research'),
                  SkillChip(label: 'Prototyping'),
                  SkillChip(label: 'Wireframing'),
                  SkillChip(label: 'Design Systems'),
                  SkillChip(label: 'Interaction Design'),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ayush is a product designer with over 5 years of experience in creating user-centered designs. '
                          'He specializes in UI/UX design, user research, and prototyping. Ayush is passionate about solving complex problems '
                          'and creating intuitive and engaging user experiences.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Contact',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ContactRow(icon: Icons.email, text: 'ayush@gmail.com'),
                    ContactRow(icon: Icons.phone, text: '+91-8567152669'),
                    ContactRow(
                      icon: Icons.link,
                      text: 'https://www.linkedin.com/in/ayush-sharma-351703247/',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

// SkillChip widget
class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[200],
    );
  }
}

// ContactRow widget
class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.black54),
          const SizedBox(width: 10),
          Flexible(child: Text(text, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
