import 'package:flutter/material.dart';
import 'package:job_apply/providers/companies.dart';
import 'package:job_apply/providers/job_category.dart';
import 'package:job_apply/providers/jobs.dart';
import 'package:provider/provider.dart';

import 'components/bottom_nav.dart';
import 'constants/color.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JobData()),
        ChangeNotifierProvider(create: (context) => JobCategoryData()),
        ChangeNotifierProvider(create: (context) => CompanyData()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: kColor1,
          ),
          home: const BottomNav(),
          routes: {}),
    );
  }
}
