// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
bool? Ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 80.0, right: 80.0,bottom: 30, top: 250),
          child: Image.asset('lib/images/logo.png'),
        ),

      Padding(
        padding: const EdgeInsets.only(left: 10, right: 140,bottom: 30,),
        child: Text('Select Language',style: GoogleFonts.aBeeZee(fontSize: 20, ),),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('lib/images/Fkhmer.png',),
        SizedBox(width: 5,),
        Text('ភាសាខ្មែរ'),
        SizedBox(width: 100,),
        Checkbox(
          value: Ischeck,
          shape: CircleBorder(),
          activeColor: Colors.green,
          onChanged: (newbol){
          setState(() {
            Ischeck = newbol;
          });
        })],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder()
            ),
          ),
        ),




      ],),
    );
  }
}