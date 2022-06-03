import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/job_category.dart';

class JobCategoryData extends ChangeNotifier {
  
  JobCategory findByID(catID) {
    return jobCategories.firstWhere((jobCat) => jobCat.id == catID);
  }

  List jobCategories = [
    JobCategory(catID: 1, title: 'Technology'),
    JobCategory(catID: 2, title: 'BroadCasting'),
    JobCategory(catID: 3, title: 'E-Commerce'),
    JobCategory(catID: 4, title: 'Development'),
    JobCategory(catID: 5, title: 'Business'),
    JobCategory(catID: 6, title: 'Other'),
  ];
}
