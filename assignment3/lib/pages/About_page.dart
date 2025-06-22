import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8FBFE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Our Mission' ,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16,),
            Text('Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics. We strive to make knowledge accessible to everyone, fostering curiosity and lifelong learning.', style: TextStyle(fontSize: 15),),
            SizedBox(height: 16,),
            Text('Background' ,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16,),
            Text('This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.', style: TextStyle(fontSize: 15),),
            SizedBox(height: 16,),
            Text('Contact Us' ,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16,),
            Text('If you have any questions, feedback, or just want to say hello, please don\'t hesitate to reach out.', style: TextStyle(fontSize: 15),),
          ],
        ),
      ),

    );
  }

}