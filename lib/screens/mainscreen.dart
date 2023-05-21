import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'chattabscreen.dart';
import 'listtabscreen.dart';
import 'profiletabscreen.dart';
import 'ratingtabscreen.dart';
import 'searchtabscreen.dart';

//for buyer screen

class MainScreen extends StatefulWidget {
  final User user;
  
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Search";

  @override
  void initState() {
    super.initState();
    tabchildren =  [
      const SearchTabScreen(),
      const ListTabScreen(),
      const ProfileTabScreen(),
      const ChatTabScreen(),
      const RatingTabScreen(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(maintitle),),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: "List"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: "Chat"),
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.rate_review,
                ),
                label: "Rating")
          ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "Search";
      }
      if (_currentIndex == 1) {
        maintitle = "List";
      }
      if (_currentIndex == 2) {
        maintitle = "Profile";
      }
      if (_currentIndex == 3) {
        maintitle = "Chat";
      }
      if (_currentIndex == 4) {
        maintitle = "Rating";
      }
    });
  }
}