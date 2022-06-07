import 'package:flutter/material.dart';
import 'package:job_apply/constants/color.dart';

class SingleCompany extends StatefulWidget {
  final int companyId;
  final String desc;
  // final String type;
  final String companyImgUrl;
  final String companyTitle;
  final String companyLocation;
  const SingleCompany({Key? key, 
    required this.companyId,
    required this.companyImgUrl,
    required this.companyLocation,
    required this.companyTitle,
    required this.desc,
    // required this.type,
  }) : super(key: key);
  @override
  State<SingleCompany> createState() => _SingleCompanyState();
}

class _SingleCompanyState extends State<SingleCompany> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 229, 226, 226)
                    .withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  widget.companyImgUrl,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                widget.companyTitle,
                  maxLines:1,
                  overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kColor3,
                  fontSize: 18,
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
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    widget.companyLocation,
                    style: const TextStyle(
                      color: kColor3,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
