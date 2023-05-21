import 'package:flutter/material.dart';

class RatingTabScreen extends StatefulWidget {
  const RatingTabScreen({super.key});

  @override
  State<RatingTabScreen> createState() => _RatingTabScreenState();
}

class _RatingTabScreenState extends State<RatingTabScreen> {
  String maintitle = " ";

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
    return Center(
      child: Text(maintitle),
    );
  }
}