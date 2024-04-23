// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcountPage extends StatefulWidget {
  const AcountPage({super.key});

  @override
  State<AcountPage> createState() => _AcountPageState();
}

class _AcountPageState extends State<AcountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 106, 197, 3),
        centerTitle: true,
        title: Text("Account", style: GoogleFonts.aBeeZee(fontSize: 20),),
      ),

      // body: SafeArea(
      // child: Row(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 10, right: 10, bottom: 500),
      //       child: Expanded(
      //         child: Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10)
      //           ),
      //           width: 390,
      //           height: 200,
      //           color: Colors.green,
                
      //         )),
      //     ),
      //     Container(),
      //   ],
      // )
         
      //    ),



     body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20), 
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Container(
                  
                  width: 390,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 106, 197, 3), 
                  ),
                  
                child: Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(60),
                          child: Image.asset('lib/images/logo.png'),
                        )
                      ),
                    )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 140, top: 60),
                        child: Row(
                        children: [
                          Text("Account"),
                          const Spacer(),
                          Text('Login or register to continue')
                        ],
                        
                                          ),
                      ))
                  ],
                ),   
                  
                  
                ),
              ),
            ],
          ),
        )
      ],
      
     ),
     
    );
  }
}