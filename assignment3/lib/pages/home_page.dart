import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Welcome to Our App',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Explore the features and information we offer.\n'
                      'Stay updated with the latest news and\ninsights.',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'App Highlights',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16),
              AppHighlightTile(
                icon: Icons.explore_outlined,
                titles: 'Explore',
                subtitle: 'Discover new content and features',
              ),
              SizedBox(height: 16,),
              AppHighlightTile(
                icon: Icons.mail_outline,
                titles: 'Contact',
                subtitle: 'Get in touch with us',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppHighlightTile extends StatelessWidget {
  final IconData icon;
  final String titles;
  final String subtitle;

  const AppHighlightTile({super.key,
    required this.icon,
    required this.titles,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFE6EDF5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 24),
          ),
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titles,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ],
          )
        ]
    );
  }
}