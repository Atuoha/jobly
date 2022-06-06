import 'package:flutter/material.dart';
import 'package:job_apply/components/home_single_list.dart';
import 'package:job_apply/providers/companies.dart';
import 'package:job_apply/providers/jobs.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';

class FeaturedJobs extends StatelessWidget {
  const FeaturedJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var companiesProvider = Provider.of<CompanyData>(context, listen: false);

    return Consumer<JobData>(
      builder: (context, jobData, child) => jobData.featuredJobs.isEmpty
          ? Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/opps.png',
                      height: 155,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Featured Jobs are empty!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kColor3,
                    ),
                  )
                ],
              ),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobData.featuredJobs.length,
              itemBuilder: (context, index) => HomeSingle(
                jobId: jobData.featuredJobs[index].id,
                companyImgUrl: companiesProvider
                    .findByID(jobData.featuredJobs[index].companyID)
                    .imgUrl,
                companyLocation: companiesProvider
                    .findByID(jobData.featuredJobs[index].companyID)
                    .headquaters,
                companyTitle: companiesProvider
                    .findByID(jobData.featuredJobs[index].companyID)
                    .name,
                jobTitle: jobData.featuredJobs[index].title,
              ),
            ),
    );
  }
}
