import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationnPage extends StatelessWidget {
  const NotificationnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 106, 197, 3),
        centerTitle: true,
        title: Text("Notification", style: GoogleFonts.aBeeZee(fontSize: 20,  )),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        reverse: false,
        
      ),
    );
  }
}