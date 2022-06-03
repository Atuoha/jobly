import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/screens/home_screen.dart';

import '../screens/companies_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/selected_companies_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Column(children: const [
          Text(
            'Welcome home',
            style: TextStyle(
              color: kColor3,
            ),
          ),
          Text('Ujunwa Lawrence', )
        ]),
      ),
      body: _pages[pageIndex],
    );
  }
}
