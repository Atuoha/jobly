import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/color.dart';
import '../providers/jobs.dart';

class CompanyModal extends StatelessWidget {
  final String name;
  final String companyImgUrl;
  final String companyLocation;
  final List jobs;

   const CompanyModal({Key? key, 
    required this.name,
    required this.companyImgUrl,
    required this.companyLocation,
    required this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:
                      const Color.fromARGB(255, 229, 226, 226).withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    companyImgUrl,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kColor3,
                      fontSize: 25,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: kColor2,
                      ),
                      Text(
                        companyLocation,
                        maxLines: 1,
                        style: const TextStyle(
                          color: kColor3,
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Available Jobs',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 280,
            child: Consumer<JobData>(
              builder: (context, jobData, child) => ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) => ListTile(
                  trailing: GestureDetector(
                    onTap: () {
                      Provider.of<JobData>(
                        context,
                        listen: false,
                      ).toggleSelected(
                        jobs[index].id,
                      );
                    },
                    child: Icon(
                      Provider.of<JobData>(
                        context,
                        listen: false,
                      ).isSelected(jobs[index].id)
                          ? Icons.turned_in
                          : Icons.turned_in_not,
                      color: kColor1,
                    ),
                  ),
                  leading: const Icon(Icons.work_outline),
                  title: Text(jobs[index].title),
                  subtitle: Text(jobs[index].jobType),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
