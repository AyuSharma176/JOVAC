import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _count = 0;
  bool _showWidget = true;

  // Task check states
  bool task1 = false;
  bool task2 = false;
  bool task3 = false;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        title: const Text(
          "Counter",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // Use ListView for scrollable content
          children: [
            const Text(
              'Tap the button to increment the counter.',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  "Count: ",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  "$_count",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: _increment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9AEBA3),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Increment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Toggle Visibility',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mark Tasks as completed by checking the boxes.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Show Widget',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Switch(
                  value: _showWidget,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    setState(() {
                      _showWidget = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (_showWidget)
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('asset/images/img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            const SizedBox(height: 10),
            const Text(
              'Task List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: const Text(
                '✅ Drink 2L Water',
                style: TextStyle(color: Colors.white),
              ),
              value: task1,
              activeColor: Colors.green,
              onChanged: (val) => setState(() => task1 = val!),
            ),
            CheckboxListTile(
              title: const Text(
                '🏃 Walk 10,000 Steps',
                style: TextStyle(color: Colors.white),
              ),
              value: task2,
              activeColor: Colors.green,
              onChanged: (val) => setState(() => task2 = val!),
            ),
            CheckboxListTile(
              title: const Text(
                '🥗 Eat Healthy Meal',
                style: TextStyle(color: Colors.white),
              ),
              value: task3,
              activeColor: Colors.green,
              onChanged: (val) => setState(() => task3 = val!),
            ),
          ],
        ),
      ),
    );
  }
}
