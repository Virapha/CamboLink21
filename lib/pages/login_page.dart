// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:combolink21_app/pages/bottombar._page.dart';
import 'package:combolink21_app/pages/homepage.dart';
import 'package:combolink21_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  HomePage _homePage = HomePage();



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MybottomPage()));
          },
          child: Text("Skip", 
          style: GoogleFonts.aBeeZee
          (fontSize: 17,color: Colors.green),),),
        actions: [
          TextButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterPage()));
          } , 
          child: Text("Register", style: GoogleFonts.aBeeZee(fontSize: 17,color: Colors.green),)),
        ],
        
      ),
      body: SafeArea(
        child:Center(child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 60,bottom: 10),
            child: Image.asset('lib/images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 340, bottom: 20),
            child: Text("Login", style: GoogleFonts.aBeeZee(fontSize: 17),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, ),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                hintText: "Email / Phone Number", hintStyle: GoogleFonts.aBeeZee(fontSize: 12),
                filled: true,
                prefixIcon: const Icon(FontAwesomeIcons.mobileScreenButton),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)
                )
              ),
          
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 15 ),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                hintText: "Password", hintStyle: GoogleFonts.aBeeZee(fontSize: 12),
                filled: true,
                prefixIcon: const Icon(FontAwesomeIcons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 17),
            child: MaterialButton(
            height: 40,
            minWidth: 325,
            onPressed:(){},
            child:Text("Login",style: GoogleFonts.aBeeZee(fontSize: 13,color: Colors.white), ),
            color: Color.fromARGB(255, 106, 197, 3),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40, top: 35),
            child: Row(
              children: [
                Expanded(child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                )),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("Login With", style: GoogleFonts.aBeeZee(fontSize: 12, color: Colors.grey[700]),),
                ),
                Expanded(child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('lib/images/google.jpg',height: 45,),
              const SizedBox(width: 10,),
              Image.asset('lib/images/apple.png', height: 45,)
            ],),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text("Forget Password", style: GoogleFonts.aBeeZee(fontSize: 12,color: Colors.grey[700]),),
          )

        ],),) ),
    );
  }
}