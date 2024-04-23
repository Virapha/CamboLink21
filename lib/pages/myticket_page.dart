import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 197, 3),
        centerTitle: true,
        title: Text("My Ticket", style: GoogleFonts.aBeeZee(fontSize: 20,  )),
      ),

      body: ListView(
        
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,top: 200),
            child: Image.asset('lib/images/ticket (2).png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text("You don't have any booking yet ", style: GoogleFonts.aBeeZee(fontSize: 18),)
            ],
          )
        ],
      ),
    );
  }
}