import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';
import 'package:provider/provider.dart';
import '../providers/jobs.dart';

class SavedJobSingle extends StatefulWidget {
  final int jobId;
  final String jobType;
  final String companyImgUrl;
  final String companyTitle;
  final String jobTitle;
  final String companyLocation;
  SavedJobSingle({
    required this.jobId,
    required this.jobType,
    required this.companyImgUrl,
    required this.companyLocation,
    required this.companyTitle,
    required this.jobTitle,
  });
  @override
  State<SavedJobSingle> createState() => _SavedJobSingleState();
}

class _SavedJobSingleState extends State<SavedJobSingle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 5,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 229, 226, 226).withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      widget.companyImgUrl,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      width: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    widget.companyTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kColor3,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // color:Colors.red,
                    alignment: const Alignment(2.3, -2),
                    child: IconButton(
                      onPressed: () {
                        Provider.of<JobData>(
                          context,listen:false
                        ).toggleSelected(
                          widget.jobId,
                        );
                      },
                      icon: Icon(
                        Provider.of<JobData>(
                          context,
                          listen: false,
                        ).isSelected(widget.jobId)
                            ? Icons.turned_in
                            : Icons.turned_in_not,
                        color: kColor1,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Text(
                widget.jobTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                    widget.companyLocation,
                    style: const TextStyle(
                      color: kColor3,
                      fontSize: 15
                    ),
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                  Icons.alarm_sharp,
                  color: kColor2,
                ),
                Text(
                    widget.jobType,
                    style: const TextStyle(
                      color: kColor3,
                      fontSize: 15
                    ),
                  ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
