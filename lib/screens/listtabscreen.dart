import 'package:flutter/material.dart';

class ListTabScreen extends StatefulWidget {
  const ListTabScreen({super.key});

  @override
  State<ListTabScreen> createState() => _ListTabScreenState();
}

class _ListTabScreenState extends State<ListTabScreen> {
  late List<Widget> tabchildren;
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