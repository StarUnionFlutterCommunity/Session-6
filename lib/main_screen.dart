// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:session6/form_screen.dart';

import 'package:session6/settings_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    FormScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: "Settings",
          // ),
        ],
        iconSize: 30,
        selectedItemColor: Colors.red,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
    );
  }
}
