import 'package:combolink21_app/pages/bottombar._page.dart';
import 'package:combolink21_app/pages/homepage.dart';
import 'package:combolink21_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 106, 197, 3),
        centerTitle: true,
        title: Text("Register", style: GoogleFonts.aBeeZee(fontSize: 20),),
        leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));}, 
        icon: Icon(FontAwesomeIcons.backwardStep)),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 60,bottom: 10),
            child: Image.asset('lib/images/logo.png'),
          ),
           SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              TextButton(onPressed: (){}, 
              child: Text("PHONE NUMBER", 
              style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.black),),
              ),
              TextButton(
                onPressed: (){}, 
              child: Text("EMAIL", style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.black),),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red
              ),
              )
            ],
            
          ),
        ],
        
      ),
    );
  }
}