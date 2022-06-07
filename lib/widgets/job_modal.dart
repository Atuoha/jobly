import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../providers/jobs.dart';

class JobModal extends StatelessWidget {
  final int jobId;
  final String jobType;
  final String companyImgUrl;
  final String companyTitle;
  final String jobTitle;
  final String companyLocation;
  final List requirements;
  const JobModal({
    Key? key,
    required this.jobId,
    required this.jobType,
    required this.companyImgUrl,
    required this.companyLocation,
    required this.companyTitle,
    required this.jobTitle,
    required this.requirements,
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
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 229, 226, 226)
                        .withOpacity(0.2),
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
                const SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      companyTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<JobData>(
                        context,
                        listen: false,
                      ).toggleSelected(
                        jobId,
                      );
                    },
                    child: (Container(
                      width: double.infinity,
                      alignment: const Alignment(1.3, -2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Provider.of<JobData>(
                            context,
                            listen: false,
                          ).isSelected(jobId)
                              ? Icons.turned_in
                              : Icons.turned_in_not,
                          color: kColor1,
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                jobTitle,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: kColor2,
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    companyLocation,
                    style: const TextStyle(color: kColor3, fontSize: 15),
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Icon(
                      Icons.alarm_sharp,
                      color: kColor2,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      jobType,
                      style: const TextStyle(
                        color: kColor3,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            const Text(
              'Requirements',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: requirements.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.verified_outlined,
                  ),
                  title: Text(requirements[index], style:TextStyle(color:kColor3)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
