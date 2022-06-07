import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/providers/companies.dart';
import 'package:job_apply/providers/job_category.dart';
import 'package:provider/provider.dart';

import '../components/single_company.dart';
import '../widgets/search_container.dart';

class CompaniesScreen extends StatefulWidget {
  const CompaniesScreen({Key? key}) : super(key: key);

  @override
  State<CompaniesScreen> createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  int tagIndex = 0;
  late List tags;
  @override
  void initState() {
    tags = Provider.of<JobCategoryData>(context, listen: false).jobCategories;

    super.initState();
  }

  @override
  void didChangeDependencies() {
    Provider.of<CompanyData>(
      context,
      listen: false,
    ).removeCompanyCategory();

    Provider.of<CompanyData>(
      context,
      listen: false,
    ).checkCompanyCategory(1);

    super.didChangeDependencies();
  }

  // List tagScreens = const [
  //   AllJobs(),
  //   PopularJobs(),
  //   FeaturedJobs(),
  // ];

  Widget tagContainer(String title, int index, int catId) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            tagIndex = index;
          },
        );
        Provider.of<CompanyData>(
          context,
          listen: false,
        ).removeCompanyCategory();

        Provider.of<CompanyData>(
          context,
          listen: false,
        ).checkCompanyCategory(tagIndex + 1);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: tagIndex == index ? kColor1 : Colors.white,
          border: tagIndex != index
              ? Border.all(
                  color: kColor1,
                  width: 1,
                )
              : null,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: tagIndex == index ? Colors.white : Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  tagIndex == index
                      ? const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        )
                      : const Text('')
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var companyData =
        Provider.of<CompanyData>(context, listen: false).companyCategory;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchContainer(),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (context, index) => tagContainer(
                  tags[index].title,
                  index,
                  tags[index].id,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: size.height / 1.6,
              child: GridView.count(
                // padding: EdgeInsets.zero,
                crossAxisSpacing: 1,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: companyData
                    .map(
                      (company) => SingleCompany(
                        companyId: company.id,
                        companyImgUrl: company.imgUrl,
                        companyLocation: company.headquaters,
                        companyTitle: company.name,
                        desc: company.description,
                        // type: ,
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
