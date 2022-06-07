import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/screens/home_screen.dart';

import '../screens/companies_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/saved_jobs.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import '../widgets/top_profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var pageIndex = 0;
  final List _pages = const [
    HomeScreen(),
    CompaniesScreen(),
    '',
    SavedJobsScreen(),
    ProfileScreen(),
  ];

  void selectePage(int index){
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: selectePage,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: kColor1,
          unselectedItemColor: const Color.fromARGB(255, 201, 200, 200),
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          currentIndex: pageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work_outline,
              ),
              label: '',
            ),
             BottomNavigationBarItem(
              icon: Text(''),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.turned_in_not_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        elevation:3,
        backgroundColor: kColor2,
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.transparent,
      // extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(gradient: kGradient),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                20,
                MediaQuery.of(context).padding.top,
                20,
                0,
              ),
              child: const TopProfile(),
            ),
            _pages[pageIndex == 2 ? 3 :pageIndex],
          ],
        ),
      ),
    );
  }
}
