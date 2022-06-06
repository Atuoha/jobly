import 'package:flutter/material.dart';
import 'package:job_apply/components/home_single_list.dart';
import 'package:job_apply/providers/companies.dart';
import 'package:job_apply/providers/jobs.dart';
import 'package:provider/provider.dart';

class AllJobs extends StatelessWidget {
  const AllJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List jobs = Provider.of<JobData>(context,listen: false).jobs;
    var companiesProvider = Provider.of<CompanyData>(context,listen: false);

    return 
    
    Consumer<JobData>(builder: (context,jobData,child) => ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: jobData.jobs.length,
      itemBuilder: (context, index) => HomeSingle(
        jobId: jobData.jobs[index].id,
        companyImgUrl: companiesProvider.findByID(jobData.jobs[index].companyID).imgUrl,
        companyLocation: companiesProvider.findByID(jobData.jobs[index].companyID).headquaters,
        companyTitle: companiesProvider.findByID(jobData.jobs[index].companyID).name,
        jobTitle: jobData.jobs[index].title,
      ),
    ),);
    
    
    
  }
}
