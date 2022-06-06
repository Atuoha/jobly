import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/screens/home_screen.dart';

import '../screens/companies_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/selected_companies_screen.dart';
import 'package:flutter/services.dart';
import 'dart:math';

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
    SelectedCompaniesScreen(),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome home',
                        style: TextStyle(
                          color: kColor3,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Ujunwa Peace',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: -40 * pi / 180,
                        child: Badge(
                          position: const BadgePosition(
                            start: 20,
                            isCenter: false,
                            bottom: 20,
                          ),
                          badgeContent: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                          badgeColor: Colors.red,
                          child: const Icon(
                            Icons.notifications_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'assets/images/user2.jpg',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            _pages[pageIndex],
          ],
        ),
      ),
    );
  }
}
