import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Hiking Feed'),
          backgroundColor: Colors.teal,
        ),
        body: const PostCard(),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/jessica.jpg'), // Replace with your image asset
            ),
            title: const Text('Ayush Sharma'),
            subtitle: const Text('@ayusharma'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),

          // Post text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Just finished a fantastic hike in the mountains! The views were breathtaking, and the fresh air was so invigorating. Feeling grateful for moments like these. #hiking #nature #mountains",
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
          ),

          const SizedBox(height: 10),

          // Post image
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assests/images/img.png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),

          // Icons Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 6),
                    Text('23'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(width: 6),
                    Text('5'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.send),
                    SizedBox(width: 6),
                    Text('2'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          // Comment section
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Liam Carter: Looks amazing! I need to plan a trip soon."),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Text("Jessica Williams: You should, Liam! It's definitely worth it."),
          ),
          SizedBox(height: 200,),
          // Add comment
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/user.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Add a comment...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
