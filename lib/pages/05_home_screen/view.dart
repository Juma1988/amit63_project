import 'package:flutter/material.dart';

import 'pages/01_home/view.dart';
import 'pages/02_messages/view.dart';
import 'pages/03_applied/view.dart';
import 'pages/04_saved/view.dart';
import 'pages/05_profile/view.dart';

part 'sub_file.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});},
         items: List.generate(
          icons3.length,
          (index) => BottomNavigationBarItem(
              icon: Icon(icons3[index]),
              label: title[index],
              tooltip: tooltip[index]),
        ),
      ),
    );
  }
}
