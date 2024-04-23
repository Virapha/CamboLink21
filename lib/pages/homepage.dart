// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:combolink21_app/pages/bottombar._page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myimg = [
    Image.asset("lib/images/pic1.PNG"),
    Image.asset("lib/images/pic2.PNG"), 
  ];

  int MycurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 197, 3),
        centerTitle: true,
        title: Text("Home", style: GoogleFonts.aBeeZee(fontSize: 20),),
      ),
      
      body: SingleChildScrollView(
        
       child : 
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            CarouselSlider( options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayInterval: const Duration(seconds: 3),
             aspectRatio: 1.0,
              onPageChanged: (index, reson){
                setState(() {
                  MycurrentIndex = index;
                });
              }
             ),
             items: myimg,),
             SizedBox(height: 10,),
             AnimatedSmoothIndicator(
              activeIndex: MycurrentIndex, 
              count: myimg.length,
              effect: WormEffect(
                activeDotColor: Colors.green
              ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40, right: 200),
                child: Text("Our Service", style: GoogleFonts.aBeeZee(fontSize: 20),),
              ),
              SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Book Ticket", style: GoogleFonts.aBeeZee(fontSize: 13),),
                  Text("Traking Parking", style: GoogleFonts.aBeeZee(fontSize: 13),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.asset('lib/images/ticket.PNG', height: 120,), ),
                  Expanded(
                    child: Image.asset('lib/images/search.PNG', height: 120,))
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40, right: 40 ),
              child: TextField(
                
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  hintText: "Get 15% OFF with code: combolink21", hintStyle: GoogleFonts.aBeeZee(fontSize: 11),
                  filled: true,
                  prefixIcon: const Icon(FontAwesomeIcons.percent),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),

          
            
          ]),
        ),
      ),

      
      
    );
  }
}