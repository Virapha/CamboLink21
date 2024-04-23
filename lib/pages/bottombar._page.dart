// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:combolink21_app/pages/account_page.dart';
import 'package:combolink21_app/pages/homepage.dart';
import 'package:combolink21_app/pages/myticket_page.dart';
import 'package:combolink21_app/pages/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MybottomPage extends StatefulWidget {
  const MybottomPage({super.key});

  @override
  State<MybottomPage> createState() => _MybottomPageState();
}

class _MybottomPageState extends State<MybottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _buildbody(),
      bottomNavigationBar: _buildbottom(),
    );
  }

  Widget _buildbody(){
    return IndexedStack(
      index: _currentIndex,
      children: [
        HomePage(),
        TicketPage(),
        NotificationnPage(),
        AcountPage(),
      ],
    );
  }




  int _currentIndex = 0;

  Widget _buildbottom(){
    return BottomNavigationBar(
      currentIndex: _currentIndex, 
      onTap: (index) {
          setState(() {
            _currentIndex =index;
          });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      
      items: [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.homeAlt), 
        label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.ticketSimple), label: "My Ticket"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "notification"),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: "Account"),

      ],
        );
  }
}