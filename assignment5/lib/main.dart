import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity Day 7',
      debugShowCheckedModeBanner: false,
      home: const FlutterForm(),
    );
  }
}

class FlutterForm extends StatefulWidget {
  const FlutterForm({super.key});

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController feedbackController = TextEditingController();

  double rating = 5;
  String? selectedCategory;
  final List<String> categories = ['Bug', 'Suggestion', 'General'];

  bool easyToUse = false;
  bool design = false;
  bool speed = false;
  bool support = false;
  bool agreeTC = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Form", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildTextField(controller: nameController, hint: "Name"),
              const SizedBox(height: 20),
              buildTextField(controller: rollController, hint: "Roll Number"),
              const SizedBox(height: 20),
              buildTextField(
                controller: feedbackController,
                hint: "Feedback",
                maxLines: 5,
              ),
              const SizedBox(height: 20),

              // Rating Slider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Rate your experience"),
                  Text(rating.toInt().toString()),
                ],
              ),
              Slider(
                value: rating,
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),

              const SizedBox(height: 10),

              // Dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: const Text("Select a category"),
                    value: selectedCategory,
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                    items: categories.map((String category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Checkboxes (with checkbox in front)
              Row(
                children: [
                  Checkbox(
                    value: easyToUse,
                    onChanged: (v) => setState(() => easyToUse = v ?? false),
                  ),
                  const Text("Easy to use"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: design,
                    onChanged: (v) => setState(() => design = v ?? false),
                  ),
                  const Text("Design"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: speed,
                    onChanged: (v) => setState(() => speed = v ?? false),
                  ),
                  const Text("Speed"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: support,
                    onChanged: (v) => setState(() => support = v ?? false),
                  ),
                  const Text("Support"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: agreeTC,
                    onChanged: (v) => setState(() => agreeTC = v ?? false),
                  ),
                  const Flexible(
                    child: Text("I agree to the terms and conditions"),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Name: ${nameController.text}");
                    print("Roll No: ${rollController.text}");
                    print("Feedback: ${feedbackController.text}");
                    print("Rating: $rating");
                    print("Category: $selectedCategory");
                    print("Easy to Use: $easyToUse");
                    print("Design: $design");
                    print("Speed: $speed");
                    print("Support: $support");
                    print("Agree to Terms: $agreeTC");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String hint,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
