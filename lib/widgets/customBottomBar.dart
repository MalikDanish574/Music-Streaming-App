import 'package:flutter/material.dart';
import 'package:music_streaming_app/screens/Emocmerce.dart';
import 'package:music_streaming_app/screens/Profile.dart';
import 'package:music_streaming_app/screens/feed.dart';

import 'package:music_streaming_app/screens/homeScreen.dart';
import 'package:music_streaming_app/utils/colors.dart';

import '../screens/music.dart';

class CustomBottombar extends StatefulWidget  {
  @override
  State<CustomBottombar> createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> {
   int _currentIndex = 0;

  List _screens = [
    Ecommerence(),
    MusicScreen(),
    HomeScreen(),
    Feed(),
    Profile_Screen(),

  ];


   void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: selectedCustomBar,
           
        unselectedItemColor: Custombarlabel,
      
        
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Ecommerce", backgroundColor: background,
            ),
        BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: "Music", backgroundColor: background),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home", backgroundColor: background
           ),
       
         BottomNavigationBarItem(
          icon: Icon(Icons.wifi_tethering_rounded),
          label: "Feed", backgroundColor: background
        
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile", backgroundColor: background
        
        ),
      ]),
    );
  }
}