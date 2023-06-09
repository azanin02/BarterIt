import 'package:flutter/material.dart';
import 'searchtabscreen.dart';
import 'loginscreen.dart';
import 'chattabscreen.dart';
import 'registrationscreen.dart';
import 'listtabscreen.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Profile";
  late double screenHeight, screenWidth, cardwitdh;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: screenHeight * 0.4,
          width: screenWidth,
          child: Card(
            child: Column(children: [Text("Profile info")]),
          ),
        ),
        Container(
          width: screenWidth,
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.background,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Text("PROFILE SETTINGS",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const LoginScreen()));
              },
              child: const Text("LOGIN"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const RegistrationScreen()));
              },
              child: const Text("REGISTRATION"),
            ),
          ],
        ))
      ]),
    );
  }
}