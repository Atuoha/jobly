import 'package:flutter/material.dart';
import 'package:job_apply/category_home_screens/all.dart';
import 'package:job_apply/category_home_screens/featured.dart';
import 'package:job_apply/category_home_screens/popular.dart';
import '../constants/color.dart';
import '../widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tagIndex = 0;
  List tags = ['All', '⚡ Popular', '⭐ Featured'];
  List tagScreens = const [
    AllJobs(),
    PopularJobs(),
    FeaturedJobs(),
  ];

  Widget tagContainer(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tagIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: tagIndex == index ? kColor4.withOpacity(0.2) : Colors.white,
          border: tagIndex != index
              ? Border.all(
                  color: kColor4,
                  width: 1,
                )
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 18,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Searchbox(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (context, index) => tagContainer(
                tags[index],
                index,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: SizedBox(
            height: size.height / 4,
            child: tagScreens[tagIndex],
          ),
        )
      ],
    );
  }
}
