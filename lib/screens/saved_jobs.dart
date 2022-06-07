import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:job_apply/screens/jobs_screen.dart';
import 'package:provider/provider.dart';
import '../components/single_job_list.dart';
import '../providers/companies.dart';
import '../providers/jobs.dart';
import '../widgets/job_modal.dart';
import '../widgets/search_container.dart';

class SavedJobsScreen extends StatefulWidget {
  const SavedJobsScreen({Key? key}) : super(key: key);

  @override
  State<SavedJobsScreen> createState() => _SavedJobsScreenState();
}

class _SavedJobsScreenState extends State<SavedJobsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var companiesProvider = Provider.of<CompanyData>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SearchContainer(),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(JobsScreen.routeName);
            },
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Icon(Icons.turned_in_not, color: kColor1),
                Text(
                  'View All Jobs Available Now',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Consumer<JobData>(
            builder: (context, jobData, child) => jobData.selectedJobs.isEmpty
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
                          'No Job is saved by you yet!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: kColor3,
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(
                    height: size.height / 1.6,
                    width: double.infinity,
                    child: ListView.builder(
                  padding: EdgeInsets.zero,

                      itemCount: jobData.selectedJobs.length,
                      itemBuilder: (context, index) => GestureDetector(
                      onTap: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => JobModal(
                          jobId: jobData.selectedJobs[index].id,
                          jobType: jobData.selectedJobs[index].jobType,
                          companyImgUrl: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .imgUrl,
                          companyLocation: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .headquaters,
                          companyTitle: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .name,
                          jobTitle: jobData.selectedJobs[index].title,
                          requirements:
                              jobData.selectedJobs[index].requirements,
                        ),
                      ),
                      child: JobSingle(
                          jobId: jobData.selectedJobs[index].id,
                          companyImgUrl: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .imgUrl,
                          jobType: jobData.selectedJobs[index].jobType,
                          companyLocation: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .headquaters,
                          companyTitle: companiesProvider
                              .findByID(jobData.selectedJobs[index].companyID)
                              .name,
                          jobTitle: jobData.selectedJobs[index].title,
                        ),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
