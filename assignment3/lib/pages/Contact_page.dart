import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contactpage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8FBFE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            SizedBox(height: 24),
            Text(
              'Contact Information',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            _inforow("Email", "ayush@gmail.com"),
            _inforow("Phone", "+91-8445298486"),
            _inforow("Address", "123 main road banglore"),
            SizedBox(height: 24),
            Text('Contact Form', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            _inputField("Your Name"),
            SizedBox(height: 12),
            _inputField("Your Email"),
            SizedBox(height: 12),
            _inputField("Your Message", maxLines: 5),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Send Message', style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
              ),
            ),
            SizedBox(height: 16),
            Text('Follow Us',
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16,),
            _socialHandle(FontAwesomeIcons.facebook, 'Facebook'),
            _socialHandle(FontAwesomeIcons.twitter, 'Twitter'),
            _socialHandle(FontAwesomeIcons.instagram, 'Instagram'),
          ],
        ),
      ),
    );
  }
}

Widget _socialHandle(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFFE6EDF5),
            borderRadius: BorderRadius.circular(50),
          ),
          child: FaIcon(icon, size: 20),
        ),
        SizedBox(width: 16),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    ),
  );
}


Widget _inputField(String hint, {int maxLines = 1}) {
  return TextField(
    maxLines: maxLines,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Color(0xFFCFD0D7),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
  );
}

Widget _inforow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Row(
      children: [
        SizedBox(
          width: 205,
          child: Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
        ),
        Expanded(
          child: Text(value, style: TextStyle(color: Colors.black87)),
        ),
      ],
    ),
  );
}
