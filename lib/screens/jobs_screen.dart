import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/widgets/job_modal.dart';
import 'package:job_apply/widgets/search_container.dart';
import 'package:provider/provider.dart';

import '../components/single_job_list.dart';
import '../providers/companies.dart';
import '../providers/job_category.dart';
import '../providers/jobs.dart';

class JobsScreen extends StatefulWidget {
  static const routeName = "/jobs_screen";

  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  int tagIndex = 0;
  late List tags;
  @override
  void initState() {
    tags = Provider.of<JobCategoryData>(context, listen: false).jobCategories;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Provider.of<JobData>(
      context,
      listen: false,
    ).removeJobCategories();

    Provider.of<JobData>(
      context,
      listen: false,
    ).checkJobCategory(1);
    super.didChangeDependencies();
  }

  Widget tagContainer(String title, int index, int catId) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            tagIndex = index;
          },
        );
        Provider.of<JobData>(
          context,
          listen: false,
        ).removeJobCategories();

        Provider.of<JobData>(
          context,
          listen: false,
        ).checkJobCategory(tagIndex + 1);
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

    var companiesProvider = Provider.of<CompanyData>(context, listen: false);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8.0),
              child: Container(
                decoration:
                    const BoxDecoration(color: kColor1, shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
        actions: [
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
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          gradient: kGradient,
        ),
        child: Column(
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
            Consumer<JobData>(
              builder: (context, jobData, child) => SizedBox(
                height: size.height / 1.4,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: jobData.jobCategories.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => JobModal(
                          jobId: jobData.jobCategories[index].id,
                          jobType: jobData.jobCategories[index].jobType,
                          companyImgUrl: companiesProvider
                              .findByID(jobData.jobCategories[index].companyID)
                              .imgUrl,
                          companyLocation: companiesProvider
                              .findByID(jobData.jobCategories[index].companyID)
                              .headquaters,
                          companyTitle: companiesProvider
                              .findByID(jobData.jobCategories[index].companyID)
                              .name,
                          jobTitle: jobData.jobCategories[index].title,
                          requirements:
                              jobData.jobCategories[index].requirements,
                        ),
                      ),
                      child: JobSingle(
                        jobId: jobData.jobCategories[index].id,
                        companyImgUrl: companiesProvider
                            .findByID(jobData.jobCategories[index].companyID)
                            .imgUrl,
                        jobType: jobData.jobCategories[index].jobType,
                        companyLocation: companiesProvider
                            .findByID(jobData.jobCategories[index].companyID)
                            .headquaters,
                        companyTitle: companiesProvider
                            .findByID(jobData.jobCategories[index].companyID)
                            .name,
                        jobTitle: jobData.jobCategories[index].title,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
